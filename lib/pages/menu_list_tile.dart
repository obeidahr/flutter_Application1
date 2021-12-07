import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about.dart';
import 'package:flutter_application_1/pages/page1.dart';
import 'package:flutter_application_1/pages/page2.dart';
import 'package:flutter_application_1/pages/settings.dart';

import 'birthday.dart';

class MenuListTileWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Page 1'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (c) => Page1()));
          },
        ),
        Divider(color: Colors.grey,),
        ListTile(
          leading: Icon(Icons.sports),
          title: Text('Page 2'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (c) => Page2()));
          }
        ),
        Divider(color: Colors.grey,),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));
          },
        ),
        Divider(color: Colors.grey,),
        ListTile(
          leading: Icon(Icons.thumb_up_alt),
          title: Text('About'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (c)=>About()));
          },
        ),
        Divider(color: Colors.grey,),
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Birthday'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (c)=>Birthday()));
          },
        ),
      ],
    );
  }
}