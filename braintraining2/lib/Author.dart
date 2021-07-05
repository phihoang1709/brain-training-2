import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:braintraining2/MainHomePage.dart';
import 'package:maps_launcher/maps_launcher.dart';


class Author extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Thông tin về tác giả ',style: TextStyle(color: Colors.black),),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainHomePage()));
          } ),
        ),
      body: Builder(
        builder: (context) => Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image(image: AssetImage('assets/images/back_1.jpg'),
              fit: BoxFit.fill,
              ),
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               
               SizedBox(height: 50.0,),
               Container(
                width: 310,
                child: Align(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)
                    ),
                    color: Color(0xffffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.userShield, color: Colors.pinkAccent,),
                        SizedBox(width: 15.0,),
                        Text(" Nguyễn Phi Hoàng",style: TextStyle(color: Colors.black, fontSize: 20),)
                      ],
                    ),
                    onPressed: (){
                     
                    },
                  ),         
                ),
               ),
               SizedBox(height: 25,),
               Container(
                width: 310,
                child: Align(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)
                    ),
                    color: Color(0xffffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.school, color: Colors.green,),
                        SizedBox(width: 20.0,),
                        Text("THPT Nghĩa Dân",style: TextStyle(color: Colors.black, fontSize: 20),)
                      ],
                    ),
                    onPressed: (){
                      MapsLauncher.launchQuery('Trường THPT Nghĩa Dân, Toàn Thắng, Kim Động, Hưng Yên, Việt Nam');
                      MapsLauncher.launchCoordinates(20.7899214, 106.0479767);
                    },
                  ),         
                ),
               ),
               SizedBox(height: 25,),
               Container(
                width: 310,
                child: Align(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)
                    ),
                    color: Color(0xffffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.mapMarkedAlt, color: Colors.blue,),
                        SizedBox(width: 20.0,),
                        Text("Kim Động - Hưng Yên",style: TextStyle(color: Colors.black, fontSize: 20),)
                      ],
                    ),
                    onPressed: (){
                      MapsLauncher.launchQuery('Toàn Thắng, Kim Động, Hưng Yên, Việt Nam');
                      MapsLauncher.launchCoordinates(20.7899214, 106.0479767);
                    },
                  ),         
                ),
               )

              ],
            )
          ],
        )
      ),     
    );

  }
}