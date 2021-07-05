import 'package:flutter/material.dart';
import 'Question.dart';

import 'package:braintraining2/Quizz/QuizHome.dart';

class Quiz1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quiz',
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
 
 var counter=0;
   
    List qList =[
    Questions("1. Cá tháng tư sống được nhiều ngày", false),
    Questions("2. Đồi mồi trồng được cây", true),
    Questions("3. Mật mã ăn được đúng hay sai?",false),
    Questions("4. Con lợn giống con heo nhất",false),
    Questions("5. Heo hút là 1 chú heo quyến rũ",false),
    Questions("6. Chỉ nha khoa là chỉ để may quần áo",true),
    Questions("7. Nam cực là lục địa đàn ông vất vả nhất ",true),
    Questions("8. Cafe là loại nước chứa ca và fe",false),
    Questions("9.  Kiến thức là con kiến không bao giờ ngủ",false),
    Questions("10. Tàu Titanic chìm vào ngày 14/4/1912 ?",true),

  ];

     var score=0;

    checkWin(bool userChoice , BuildContext context )
{
  

    if(userChoice==qList[counter].isCorrect)
 { 
    print("Đáp án đúng");
     
     score= score+10;
    final snackbar = SnackBar(
      duration: Duration(milliseconds : 500),
      backgroundColor: Colors.green,
      content: Text("Đáp án đúng"),);
    Scaffold.of(context).showSnackBar(snackbar);
 }
 else 
 {print("Đáp án sai");
        score = score+0;
    final snackbar = SnackBar(
      duration: Duration(milliseconds : 500),
      backgroundColor: Colors.red,
      content: Text("Đáp án sai"),
      );
    Scaffold.of(context).showSnackBar(snackbar);
 }
    setState(() {
 
   if(counter<9)
   {
     counter = counter +1;
   }  
  }); 
} 
 
 reset()
 {
   setState(() {
     counter = 0;
     score =0;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        backgroundColor: Color.fromARGB(190, 0, 40, 170),
   
        title: Text('Bài 3',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF4F3E3),

      body: Builder(
              builder : (BuildContext context) => Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              Container(height: 300,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/quiz.jpg"),
                fit: BoxFit.fill ),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 30)),


              Container(
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Điểm số: $score /100",style: TextStyle(color : Colors.brown , 
                    fontSize: 20,fontWeight: FontWeight.bold),),
                
                    InkWell(
                     child: Text("Quay lại",style: TextStyle(fontSize: 18,color: Colors.redAccent,fontWeight: FontWeight.bold),),
                     onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuizHome()));
                     },
                   )

                 ],
               ),
              
              ),

             Padding(padding: EdgeInsets.only(top: 30)),
              
              Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Color.fromARGB(190, 0, 40, 170))
                  ),
                  height: 90.0,
                  width: 400,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         FittedBox(child: Text(qList[counter].qText,style: TextStyle(fontSize: 18.0,)),)

                       ],
                     ),             
                     
               ),

              Padding(padding: EdgeInsets.only(top: 30)),
                      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   
                RaisedButton(onPressed:()=> checkWin(true, context),

                padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
                
                child: Text("✓",style: TextStyle(color: Colors.green,fontSize: 35,fontWeight: FontWeight.bold),),
                color:  Color.fromARGB(190, 0, 40, 170),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
                 
              RaisedButton(onPressed: ()=> checkWin(false,context),

                padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
                
                child: Text("✗",style: TextStyle(color: Colors.red,fontSize: 35,fontWeight: FontWeight.bold),),
                color: Color.fromARGB(190, 0, 40, 170),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                )
                ],
              ),

              

             ],
          ),
        ),
      ),
       
      
    );
  }
}