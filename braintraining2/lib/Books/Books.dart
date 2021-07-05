import 'package:flutter/material.dart';

import 'package:braintraining2/MainHomePage.dart';
import 'package:braintraining2/Books/Ebook.dart';
import 'package:braintraining2/Books/AudioBook.dart';

class Books extends StatefulWidget{

  @override
  _BooksHome createState() => _BooksHome();
}

class _BooksHome extends State<Books> {

  int _index = 0 ;
  final tabs = [ 
    Center(child: Ebook()),
    Center(child: AudioBook()),
  ];
  
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: Colors.white,
          title: Text('Đọc sách',style: TextStyle(color: Colors.black),),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainHomePage()));
          } ),
        ),

      body: tabs[_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text("Ebook"),
            backgroundColor: Colors.blue,
            ),

          BottomNavigationBarItem(
            icon: Icon(Icons.headset),
            title: Text("Audio Book"),
            backgroundColor: Colors.blue,
            ),
        ],
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        ),

    );
  }
}