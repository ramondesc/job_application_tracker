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
          child: Card(child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Align(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(title,
                          style: TextStyle(
                              //fontFamily: 'Google',
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    )),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      content,
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ],
          )),
    ));
  }
}
