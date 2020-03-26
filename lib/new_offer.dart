//import 'Offer.dart';

import 'package:flutter/material.dart';
import 'data/moor_database.dart';
import 'package:provider/provider.dart';

class NewOffer extends StatefulWidget {
  @override
  _NewOfferState createState() {
    return _NewOfferState();
  }
}

class _NewOfferState extends State<NewOffer> {
  final _jobTitleController = TextEditingController();
  final _companyController = TextEditingController();
  final _salaryController = TextEditingController();
  final _platformController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String offerStatus;

  List<String> _applicationStatus = [
    'Wishlist',
    'Applied',
    'Interview',
    'Offer',
    'Rejected'
  ];

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    _jobTitleController.dispose();
    _companyController.dispose();
    _salaryController.dispose();
    _platformController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF003030),
          title: Text("Cadastrar vaga"),
        ),
        backgroundColor: Color(0xFF034E4E),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              new ListTile(
                  leading:
                      const Icon(Icons.business_center, color: Colors.white),
                  title: new TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    controller: _jobTitleController,
                    decoration: new InputDecoration(
                        labelStyle: new TextStyle(
                          color: Colors.white,
                        ),
                        hoverColor: Colors.white,
                        focusColor: Colors.white,
                        hintText: "Título da vaga",
                        hintStyle: TextStyle(color: Colors.grey[500])),
                  )),
              new ListTile(
                  leading: const Icon(Icons.business, color: Colors.white),
                  title: new TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    controller: _companyController,
                    decoration: new InputDecoration(
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      hintText: "Empresa",
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                  )),
              new ListTile(
                  leading: const Icon(Icons.attach_money, color: Colors.white),
                  title: new TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    controller: _salaryController,
                    decoration: new InputDecoration(
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      hintText: "Salário",
                      hintStyle: TextStyle(),
                    ),
                  )),
              new ListTile(
                leading: Icon(
                  Icons.flag,
                  color: Colors.white,
                ),
                title: new DropdownButton<String>(
                  items: _applicationStatus.map((String value) {
                    return new DropdownMenuItem<String>(
                        child: new Text(value), value: value);
                  }).toList(),
                  hint: Text('Status'),
                  value: offerStatus,
                  onChanged: (val) {
                    offerStatus = val;
                    setState(() {});
                  },
                ),
              ),
              new ListTile(
                  leading: const Icon(Icons.computer),
                  title: new TextFormField(
                    controller: _platformController,
                    decoration: new InputDecoration(
                      hintText: "Plataforma",
                    ),
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Save',
          backgroundColor: Colors.red,
          onPressed: () {
            if (_formKey.currentState.validate()) {
              final dao = Provider.of<OfferDao>(context);
              final offer = Offer(
                  company: _companyController.text,
                  title: _jobTitleController.text,
                  salary: double.parse(_salaryController.text),
                  status: offerStatus,
                  regime: "CLT",
                  platform: _platformController.text);
              dao.insertOffer(offer);
            }
            Navigator.pop(context);
          },
          child: Icon(Icons.save),
        ));
  }
}
