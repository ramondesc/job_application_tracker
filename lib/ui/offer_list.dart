import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_application_tracking/ui/offer_card.dart';
import 'package:provider/provider.dart';
import '../data/moor_database.dart';
import 'package:job_application_tracking/new_offer.dart';

class OfferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              //title: Text('Welcome!'),
              title: TabBar(tabs: [
                Tab(icon: Icon(Icons.star_border)),
                Tab(icon: Icon(Icons.send)),
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.business_center)),
                Tab(icon: Icon(Icons.thumb_down))
              ]),
            ),
            body: TabBarView(
              children: <Widget>[
                _buildOfferList(context, "Wishlist"),
                _buildOfferList(context, "Applied"),
                _buildOfferList(context, "Interview"),
                _buildOfferList(context, "Accepted"),
                _buildOfferList(context, "Rejected")
              ],
            ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NewOffer()),
    );
    },
    tooltip: 'Cadastrar oportunidade',
    child: Icon(Icons.add))));
  }

  StreamBuilder<List<Offer>> _buildOfferList(BuildContext context, String status) {
    final dao = Provider.of<OfferDao>(context);
    return StreamBuilder(
      stream: dao.watchOfferByStatus(status),
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
    return OfferCard(item);
  }
}
