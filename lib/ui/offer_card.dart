import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_application_tracking/ui/offer_details.dart';
import 'package:provider/provider.dart';
import '../data/moor_database.dart';


class OfferCard extends StatelessWidget {
  final Offer item;
  OfferCard(this.item);

  @override
  Widget build(BuildContext context) {

    return Container( child: Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: InkWell(
        onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OfferDetails()),
      );},
    child: Container(
    padding: EdgeInsets.only(right: 12.0),
    decoration: BoxDecoration(color: Colors.white30),
    child: ListTile(
    title: Text(item.title),
    subtitle: Text(item.applicationDate?.toString() ?? 'No date'),
    )),
    ),
    ));
  }
}




