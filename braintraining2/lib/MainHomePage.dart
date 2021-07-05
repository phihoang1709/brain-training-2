import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:braintraining2/Quizz/QuizHome.dart';
import 'package:braintraining2/Books/Books.dart';
import 'package:braintraining2/LearnScreen.dart';
import 'package:braintraining2/Games/GamesHome.dart';
import 'package:braintraining2/Author.dart';
import 'package:braintraining2/FeedBack.dart';
import 'package:braintraining2/AppIntroPage.dart';




class MainHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS
      ? Colors.grey[50] : null,),
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Trang chủ"),
          centerTitle: true,
          elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        ),
        
    

        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(      
                accountEmail: Text("Phiên bản 2.0"),        
                accountName: Text("Brain training 2.0",style: TextStyle(fontSize: 25),),
                currentAccountPicture: CircleAvatar(       
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS 
                  ? Colors.purple
                  :Colors.white,     
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('assets/images/one.png'))
                        ),
                      )
                    ],
                  ),
                ), ),
                
              Divider(),
              ListTile(
                leading: Icon(FontAwesomeIcons.home,color: Colors.yellow,),
                title: Text("Trang chủ"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainHomePage()));
                }
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.leanpub,color: Colors.blue,),
                title: Text("Bài học"),
                onTap: () {
                  Navigator.of(context).pop(MaterialPageRoute(builder: (context) => MainHomePage()));
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LearnScreen()));
                                  }
                                ),   
                                ListTile(
                                  leading: Icon(FontAwesomeIcons.book,color: Colors.purple),
                                  title: Text("Đọc sách"),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Books()));
                                  }
                                ),   
                                ListTile(
                                  leading: Icon(FontAwesomeIcons.questionCircle,color: Colors.brown),
                                  title: Text("Trắc nghiệm vui"),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuizHome()));
                                  }
                                ),
                                ListTile(
                                  leading: Icon(FontAwesomeIcons.gamepad,color: Colors.deepOrange),
                                  title: Text("Trò chơi"),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamesHome()));
                                  }
                                ),
                                
                                Divider(),
                                  ListTile(
                                  leading: Icon(FontAwesomeIcons.envelopeOpenText,color: Colors.cyan),
                                  title: Text("Góp ý"),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FeedBack()));
                                  }
                                ),
                                ListTile(
                                  leading: Icon(FontAwesomeIcons.userEdit,color: Colors.black),
                                  title: Text("Tác giả"),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Author()));
                                  }
                                ),
                                Divider(),
                                ListTile(
                                  leading: Icon(FontAwesomeIcons.cogs),
                                  title: Text("Cài đặt"),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainHomePage()));
                                  }
                                ),
                                
                              ],
                            ),
                          ),
                          body: Container(
                            child: AppIntroPage(),
                          )
                        )
                      );
                    }
                  }
                  
                  class LearnLibraryy {
}