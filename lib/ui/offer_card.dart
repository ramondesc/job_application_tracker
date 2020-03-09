import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_application_tracking/ui/offer_details.dart';
import '../data/moor_database.dart';


class OfferCard extends StatelessWidget {
  final Offer item;
  OfferCard(this.item);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: InkWell(
                onLongPress: () {},
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OfferDetails(item)),
                  );
                },
                child: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: BoxDecoration(color: Colors.white30),
                    child: Column(children: <Widget>[
                      ListTile(
                        enabled: true,
                        //isThreeLine: true,
                        //trailing: Icon(Icons.account_circle),
                        title: Text(item.title),
                        subtitle: Text(item.status),
                        trailing: Text("R\$" + item.salary.toString()),
                        //subtitle: Text(item.applicationDate?.toString() ?? 'No date'),
                      ),
                      /*
                      ButtonBar(
                        children: <Widget>[
                          Chip(label: Text("Java")),
                          Chip(
                            label: Text("Node"),
                            backgroundColor: Colors.greenAccent,
                          ),
                          Chip(label: Text("FileMaker")),
                        ],
                      )*/
                    ])))));
  }
}
