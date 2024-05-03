import 'package:flutter/material.dart';
import 'package:smollan_ass/challenges_and_reward.dart';
import 'package:smollan_ass/custom_drawer.dart';

class Homepage extends StatelessWidget {
  static const routeName = 'homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyCustomDrawer(),
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, ChallengesAndReward.routeName);
                },
                child: Text('Redirect')),
          )
        ],
      ),
    );
  }
}
