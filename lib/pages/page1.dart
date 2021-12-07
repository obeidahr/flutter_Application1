import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: SafeArea(
        child:Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
                labelText: '',
              ),
            ),
            Divider(height: 20,),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Save'),
              color: Colors.lightBlueAccent,
              onPressed: (){})
          ],
          ) 
        ),
    );
  }
}