import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:braintraining2/MainHomePage.dart';


class FeedBack extends StatelessWidget{

  void customLaunch(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Góp ý đến tác giả',style: TextStyle(color: Colors.black),),
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
              child: Image(image: AssetImage('assets/images/feedback.jpg'),
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
                        Icon(FontAwesomeIcons.envelope, color: Colors.pinkAccent,),
                        SizedBox(width: 15.0,),
                        Text("Góp ý qua Gmail",style: TextStyle(color: Colors.black, fontSize: 20),)
                      ],
                    ),
                    onPressed: (){
                     customLaunch('mailto:phih5066@gmail?subject=Góp%20ý&body=Nội%20dung');
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
                        Icon(FontAwesomeIcons.sms, color: Colors.green,),
                        SizedBox(width: 20.0,),
                        Text("Góp ý qua tin nhắn",style: TextStyle(color: Colors.black, fontSize: 20),)
                      ],
                    ),
                    onPressed: (){
                      customLaunch('sms:0986036671');
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
                        Icon(FontAwesomeIcons.facebook, color: Colors.blue,),
                        SizedBox(width: 20.0,),
                        Text("Góp ý qua tin nhắn",style: TextStyle(color: Colors.black, fontSize: 20),)
                      ],
                    ),
                    onPressed: (){
                      customLaunch('https://www.facebook.com/messages/t/hoang.khunglong.16');
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