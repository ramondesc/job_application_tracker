import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_application_tracking/ui/edit_screen.dart';
import 'grid_item.dart';
import '../data/moor_database.dart';
import 'package:job_application_tracking/new_offer.dart';
import 'alert_dialog.dart';

class OfferDetails extends StatelessWidget {
  final Offer item;
  OfferDetails(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 10.0,
            backgroundColor: Colors.grey[800],
            title: Text(item.title,
            style: TextStyle(
              fontFamily: 'Google',
              fontWeight: FontWeight.bold
            ),),
            actions: <Widget>[
              IconButton(icon: const Icon(Icons.edit),
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ModifyOffer(item)));},),
              IconButton(icon: const Icon(Icons.delete),
              onPressed: () {showAlertDialog2(context);},),
            ],
            centerTitle: true,
            /*bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Theme(
                data: Theme.of(context).copyWith(accentColor: Colors.white),
                child: Container(
                  height: 25.0,
                  alignment: Alignment.center,
                  child: Text(item.company,
                  style: TextStyle(color: Colors.white),),
                ),
              ),
            )*/),
        body: Column(
    children: <Widget>[
      Container(
            child: Text(item.company),
        ),
    Expanded(
    child:
      GridView.count(
        childAspectRatio: 2.2,
            primary: false,
            padding: const EdgeInsets.all(15),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              GridCard("Salário", item.salary.toString()),
              GridCard("Tipo", "CLT"),
              GridCard("Plataforma", "Kombo"),
              GridCard("Divulgação", "01/01/2020")])
    )]),
    );

  }
}
