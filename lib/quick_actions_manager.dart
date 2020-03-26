import 'package:job_application_tracking/new_offer.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class QuickActionsManager extends StatefulWidget {
  final Widget child;
  QuickActionsManager({Key key, this.child}) : super(key: key);
  _QuickActionsManagerState createState() => _QuickActionsManagerState();
}

class _QuickActionsManagerState extends State<QuickActionsManager> {
  final QuickActions quickActions = QuickActions();

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
  void _setupQuickActions() {
    quickActions.setShortcutItems(<ShortcutItem>[
      ShortcutItem(
          type: 'action_main',
          localizedTitle: 'Cadastrar oportunidade',
          icon: Platform.isAndroid ? 'quick_box' : 'QuickBox')
    ]);
  }

  void _handleQuickActions() {
    quickActions.initialize((shortcutType) {
      if (shortcutType == 'action_main') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewOffer()));
      } else if(shortcutType == 'action_help') {
        print('Show the help dialog!');
      }
    });
  }
}





