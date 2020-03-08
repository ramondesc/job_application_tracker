import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../data/moor_database.dart';
import 'package:job_application_tracking/new_offer.dart';

class OfferDetails extends StatelessWidget {
  final Offer item;
  OfferDetails(this.item);

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.cyan,
          title: Text(item.title),
          actions: <Widget>[],
        ),
        body: GridView.count(
          childAspectRatio: 2.2,
          primary: false,
          padding: const EdgeInsets.all(25),
          crossAxisSpacing: 10,
          mainAxisSpacing: 6,
          crossAxisCount: 2,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFCF2F2FF),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Align(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Salário",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              item.salary.toString(),
                              style: TextStyle(fontSize: 18),
                            )),
                      )
                    ],
                  )),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFCF2F2FF),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Align(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Tipo",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "CLT",
                              style: TextStyle(fontSize: 18),
                            )),
                      )
                    ],
                  )),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFCF2F2FF),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Align(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Align(alignment: Alignment.topLeft,
                              child: Text("Plataforma",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Kombo",
                              style: TextStyle(
                                  fontSize: 18
                              ),)),
                      )

                    ],
                  )),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFCF2F2FF),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Align(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Align(alignment: Alignment.topLeft,
                              child: Text("Divulgação",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text("01/01/2020",
                              style: TextStyle(
                                  fontSize: 18
                              ),)),
                      )

                    ],
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution is coming...'),
              color: Colors.teal[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution, they...'),
              color: Colors.teal[600],
            ),
          ],
        ) /*Center(
            child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: 120.0,
              minWidth: 160.0,
              maxHeight: 120.0,
              maxWidth: 160.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ),
        ))*/
        );
  }
}
