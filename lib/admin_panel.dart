import 'package:flutter/material.dart';
import 'package:smollan_ass/custom_drawer.dart';

class AdminPanelScreen extends StatelessWidget {
  static const routeName = 'adminpanelscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyCustomDrawer(),
      appBar: AppBar(
        title: Text('Admin Panel'),
      ),
    );
  }
}
