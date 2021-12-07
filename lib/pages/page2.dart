import 'package:flutter/material.dart';
class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: SafeArea(child: Container()),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade200,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon:Icon(Icons.add_location_alt_outlined), onPressed: (){},color: Colors.white,),
            IconButton(icon:Icon(Icons.flash_off), onPressed: (){},color: Colors.white,),
            IconButton(icon:Icon(Icons.account_box_rounded), onPressed: (){},color: Colors.white,),
            Divider(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue.shade200,
        onPressed: (){},
      ),
    );
  }
}