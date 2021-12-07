import 'package:flutter/material.dart';
import 'menu_list_tile.dart';

class LeftDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 60.0,
              color: Colors.white,
            ),
            accountName: Text('obeida'),
            accountEmail: Text('obeiworkhr@gmail.com'),
            otherAccountsPictures: [
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              )
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home_top_mountain.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}