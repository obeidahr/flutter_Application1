import 'package:flutter/material.dart';

import 'build_body.dart';

class Birthday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Birthday',style: TextStyle(color: Colors.black54),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        brightness: Brightness.light,
        actions: [
          IconButton(icon: Icon(Icons.favorite_border), onPressed: (){})
        ],
      ),
      body: buildBody(),
    );
  }
}
