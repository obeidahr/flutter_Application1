import 'package:flutter/material.dart';

Widget buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _buildJournalHeaderImage(),
        SafeArea(
          child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildJournalEntry(),
              Divider(),
              _buildJournalWeather(),
              Divider(),
              _buildJournalTags(),
              Divider(),
              _buildJournalFooterImages(),
            ],
          ),
        )),
      ],
    ),
  );
}

Image _buildJournalHeaderImage() {
  return Image(
    image: AssetImage('assets/images/present.jpg'),
    fit: BoxFit.cover,
  );
}

Column _buildJournalEntry() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'My birthday',
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
        'It’s going to be a great birthday.We are going out for dinner at my favorite place,then watch a movie after we go to the gelateria for ice cream andespresso.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _buildJournalWeather() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.wb_sunny,
            color: Colors.orange,
          )
        ],
      ),
      SizedBox(
        width: 16,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '32º Clear',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '4500 San Alpho Drive, Dallas, TX United States',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      )
    ],
  );
}

Wrap _buildJournalTags() {
  return Wrap(
      spacing: 10.0,
      children: List.generate(7, (int index) {
        return Chip(
            label: Text(
          "Gift ${index + 1}",
          style: TextStyle(fontSize: 10),
        ),
        avatar: Icon(Icons.card_giftcard,color: Colors.blue.shade300,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
        );
      }));
}

Row _buildJournalFooterImages(){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/salmon.jpg') ,
        radius: 40,
      ),
      SizedBox(width: 6,),
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/strawberries.jpg'),
        radius: 40,
      ),
      SizedBox(width: 6,),
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/cake.jpg'),
        radius: 40,
      ),
      SizedBox(
        width: 70.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.cake),
            Icon(Icons.star_border),
            Icon(Icons.music_note),
          ],
        ),
      ),
    ],
  );  
}