import 'package:flutter/material.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:provider/provider.dart';
import 'data/moor_database.dart';

class NewOfferInput extends StatefulWidget {
  const NewOfferInput({
    Key key,
  }) : super(key: key);

  @override
  _NewOfferInputState createState() => _NewOfferInputState();
}

class _NewOfferInputState extends State<NewOfferInput> {
  DateTime newApplicationDate;
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _buildTextField(context),
          _buildDateButton(context),
        ],
      ),
    );
  }

  Expanded _buildTextField(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: 'Title name'),
        onSubmitted: (inputName) {
          final dao = Provider.of<OfferDao>(context);
          final offer = OffersCompanion(
            title: Value(inputName),
            company: Value('Aperture'),
            applicationDate: Value(newApplicationDate)
          );
          dao.insertOffer(offer);
          resetValuesAfterSubmit();
        },
      ),
    );
  }

  IconButton _buildDateButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.calendar_today),
      onPressed: () async {
        newApplicationDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2010),
          lastDate: DateTime(2050),
        );
      },
    );
  }

  void resetValuesAfterSubmit() {
    setState(() {
      newApplicationDate = null;
      controller.clear();
    });
  }
}