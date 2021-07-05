import 'package:flutter/material.dart';
import 'package:braintraining2/MainHomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:braintraining2/Games/MemoryGame/MemoryGamePage.dart';


class GamesHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Trò chơi',style: TextStyle(color: Colors.black),),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainHomePage()));
          } ),
        ),


        body: SingleChildScrollView(
           
            child: Stack(
            
            children: <Widget>[
              Column(               
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Positioned(
                    
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height:30),
                          FlatButton(         
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/cardgame.jpeg'),fit: BoxFit.fill),
                                SizedBox(height: 15),
                                Text("Lật thẻ bài", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MemoryGamePage()),);
                            },
                          ),
                          SizedBox(height: 35),
                          
                          SizedBox(height: 35),
                          
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          
        ),
        );
    
  }
}