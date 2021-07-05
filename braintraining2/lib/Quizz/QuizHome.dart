import 'package:braintraining2/Quizz/appBarTitle.dart';
import 'package:flutter/material.dart';
import 'package:braintraining2/MainHomePage.dart';

import 'package:braintraining2/Quizz/appBarTitle.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:braintraining2/Quizz/Quiz1.dart';

class QuizHome extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: appBar(context),
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
                                Image(image: AssetImage('assets/images/quizimg.png'),fit: BoxFit.fill),
                                SizedBox(height: 0),
                                Text("Bài trắc nghiệm 1", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quiz1()),);
                            },
                          ),
                          SizedBox(height: 5),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/quizimg.png'),fit: BoxFit.fill,),
                                SizedBox(height: 15),
                                Text("Bài trắc nghiệm 2", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quiz1()),);
                            },
                          ),
                          SizedBox(height: 5),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/quizimg.png'),fit: BoxFit.fill,),
                                SizedBox(height: 5),
                                Text("Bài trắc nghiệm 3", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quiz1()),);
                            },
                          ),
                          SizedBox(height: 5),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/quizimg.png'),fit: BoxFit.fill,),
                                SizedBox(height: 5),
                                Text("Bài trắc nghiệm 4", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quiz1()),);
                            },
                          ),
                          SizedBox(height: 5),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/quizimg.png'),fit: BoxFit.fill,),
                                SizedBox(height: 15),
                                Text("Bài trắc nghiệm 5", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quiz1()),);
                            },
                          ),
                          SizedBox(height: 85),
                          
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          
        ),
      floatingActionButton: SpeedDial(
          
          closeManually: false,
          animatedIcon: AnimatedIcons.view_list,
          children: [
            
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.question),
              label: "Hướng dẫn",
              backgroundColor: Colors.blue,
              onTap: () => _popDialog(context),
              
            )
          ],
        ),
        
    );
    
  }
}
void _popDialog(BuildContext context){
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 80,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            title: Text("📖 Hướng dẫn",style: TextStyle(fontSize: 30),),
            content: Text("  Mỗi bài sẽ có 20 câu hỏi với mỗi đáp án đúng được 5 điểm, sau khi hoàn thành 20 câu hỏi nhấn nút quay lại để làm bài tiếp theo."),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Đã hiểu"),)
            ],);
        },
      );
    }