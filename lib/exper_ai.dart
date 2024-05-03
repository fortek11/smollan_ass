import 'package:flutter/material.dart';
import 'package:smollan_ass/custom_drawer.dart';

class ExpertAIScreen extends StatelessWidget {
  static const routeName = 'expertAIscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyCustomDrawer(),
      appBar: AppBar(title: Text("Expert AI")),
    );
  }
}
