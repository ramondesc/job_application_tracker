import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/moor_database.dart';

showAlertDialog2(BuildContext context, Offer item) {

  Widget cancelaButton = FlatButton(
    child: Text("Cancelar"),
    onPressed:  () {Navigator.of(context).pop();},
  );
  Widget continuaButton = FlatButton(
    child: Text("Continar"),
    onPressed:  () {
      final dao = Provider.of<OfferDao>(context);
      dao.deleteOffer(item);
      Navigator.of(context).pop();
      Navigator.of(context).pop();
    },
  );

  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Atenção"),
    content: Text("Deseja excluir a vaga?"),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );

  //exibe o diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}