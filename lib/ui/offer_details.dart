import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../data/moor_database.dart';
import 'package:job_application_tracking/new_offer.dart';

class OfferDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.cyan,
          title: Text("Stock & Info"),
        ),
        body: Center( child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: 30.0, minWidth: 10.0, maxHeight: 800.0, maxWidth: 300.0),
          child: Container(
            color: Colors.white,
          ),
        )));
  }
}
