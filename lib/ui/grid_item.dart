import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String title;
  final String content;
  GridCard(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(),
      child: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
          BoxShadow(
          color: Colors.grey[200],
              offset: Offset(3.0, 3.0),
              blurRadius: 3.0,
              spreadRadius: 0.5),
          BoxShadow(
              color: Colors.grey[300],
              offset: Offset(-3.0, -3.0),
              blurRadius: 3.0,
              spreadRadius: 0.5),],
              color: Colors.white,
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
                      child: Text(title,
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
                      content,
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ],
          )),
    );
  }
}
