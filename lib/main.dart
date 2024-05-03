import 'package:flutter/material.dart';
import 'package:smollan_ass/admin_panel.dart';
import 'package:smollan_ass/challenges_and_reward.dart';
import 'package:smollan_ass/exper_ai.dart';
import 'package:smollan_ass/homepage.dart';

void main() {
  runApp(SmollanAss());
}

class SmollanAss extends StatelessWidget {
  const SmollanAss({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      routes: {
        Homepage.routeName: (context) => Homepage(),
        ExpertAIScreen.routeName: (context) => ExpertAIScreen(),
        AdminPanelScreen.routeName: (context) => AdminPanelScreen(),
        ChallengesAndReward.routeName: (context) => ChallengesAndReward()
      },
    );
  }
}
