import 'package:flutter/material.dart';
import 'offer_details.dart';

import 'offer_list.dart';
import '../new_offer_input.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/offer_list',
      routes: {
        '/offer_list': (context) => OfferList(),
        '/new_offer': (context) => NewOfferInput(),
        '/offer_details': (context) => OfferDetails()
      },
    );
  }
}
