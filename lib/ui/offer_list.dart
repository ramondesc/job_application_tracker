import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../data/moor_database.dart';
import 'package:job_application_tracking/new_offer.dart';

class OfferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Welcome!'),
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.star_border)),
                Tab(icon: Icon(Icons.send)),
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.business_center)),
                Tab(icon: Icon(Icons.thumb_down))
              ]),
            ),
            body: Column(
              children: <Widget>[
                Expanded(child: _buildOfferList(context)),


              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewOffer()),
              );
              },
              tooltip: 'New entry',
              child: Icon(Icons.add),
            ) ))
    ;
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
