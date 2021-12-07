import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/right_drawer.dart';
import 'left_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        backgroundColor: Colors.green[300],
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {}
          ),
          IconButton(
            icon: Icon(Icons.more_vert), 
            onPressed: () {}
          ),
        ],
      ),
      drawer: LeftDrawerWidget(),
      endDrawer: RightDrawerWidget(),
      body: null,
    );
  }
}
