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

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastrar vaga"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              new ListTile(
                  leading: const Icon(Icons.business_center),
                  title: new TextFormField(
                    controller: _jobTitleController,
                    decoration: new InputDecoration(
                      hintText: "Título da vaga",
                    ),
                  )),
              new ListTile(
                  leading: const Icon(Icons.business),
                  title: new TextFormField(
                    controller: _companyController,
                    decoration: new InputDecoration(
                      hintText: "Empresa",
                    ),
                  )),
              new ListTile(
                  leading: const Icon(Icons.attach_money),
                  title: new TextFormField(
                    controller: _salaryController,
                    decoration: new InputDecoration(
                      hintText: "Salário",
                    ),
                  )),
              new ListTile(
                  leading: Icon(Icons.flag),
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
                  )),
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
                status: offerStatus
              );
              dao.insertOffer(offer);
              }
            Navigator.pop(context);
          },
          child: Icon(Icons.save),
        ));
  }
}
