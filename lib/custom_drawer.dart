import 'package:flutter/material.dart';
import 'package:smollan_ass/admin_panel.dart';
import 'package:smollan_ass/challenges_and_reward.dart';
import 'package:smollan_ass/exper_ai.dart';
import 'package:smollan_ass/homepage.dart';

class MyCustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text('  Smollan Assignment'),
          Flexible(child: Divider()),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, Homepage.routeName);
            },
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, ChallengesAndReward.routeName);
            },
            leading: Icon(Icons.card_giftcard),
            title: Text('Rewards'),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, AdminPanelScreen.routeName);
            },
            leading: Icon(Icons.admin_panel_settings),
            title: Text('Admin Panel'),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, ExpertAIScreen.routeName);
            },
            leading: Icon(Icons.air),
            title: Text('ExpertAI'),
          )
        ],
      ),
    );
  }
}
