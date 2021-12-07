import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/menu_list_tile.dart';

class RightDrawerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Icon(Icons.face,size: 128,color: Colors.white54,),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          MenuListTileWidget()
        ],
      ),
    );
  }
}