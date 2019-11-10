import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'data/moor_database.dart';
import 'new_offer_input.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bem vindo!'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildOfferList(context)),
            NewOfferInput(),
          ],
        ));
  }

  StreamBuilder<List<Offer>> _buildOfferList(BuildContext context) {
    final dao = Provider.of<OfferDao>(context);
    return StreamBuilder(
      stream: dao.watchAllOffers(),
      builder: (context, AsyncSnapshot<List<Offer>> snapshot) {
        final offers = snapshot.data ?? List();

        return ListView.builder(
          itemCount: offers.length,
          itemBuilder: (_, index) {
            final item = offers[index];
            return _buildListItem(item, dao);
          },
        );
      },
    );
  }

  Widget _buildListItem(Offer item, OfferDao dao) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => dao.deleteOffer(item),
        )
      ],
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.applicationDate?.toString() ?? 'No date'),
      ),
    );
  }
}