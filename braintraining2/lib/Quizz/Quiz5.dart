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
    Questions("1. Khi một con mèo vẫy đuôi ( ngoại trừ lúc ngủ ), \n thì chúng đang cảm thấy khó chịu đúng hay sai ?", true),
    Questions("2. Khi chúng ta vẽ tranh , bán cầu não phải hoạt \n động nhiều hơn bán cầu não trái đúng hay sai ? ", true),
    Questions("3. Tia X ( tia Rơn-ghen ) được ứng dụng trong \n chụp điện , chiếu điện trong Y học đúng hay sai ?",true),
    Questions("4. Ngày 2-6-1911 Bác Hồ rời bến cảng Nhà Rồng \n ra đi tìm đường cứu nước đúng hay sai ?",false),
    Questions("5. 10–6  :  3–1 =2 đúng hay sai ?",false),
    Questions("6. Ánh sáng trắng là ánh sáng đơn sác vì nó \n có 1 màu trắng đúng hay sai ?",true),
    Questions("7. Trong phim Tây Du Kí , Tôn Ngộ Không được \n sư phụ Đường Tăng đặt pháp danh là Giả Hành Tôn đúng hay sai ?",true),
    Questions("8. Bài Tiến Quân Ca do Nam cao sáng tác \n đúng hay sai?",false),
    Questions("9. Bảng chữ cái Tiếng Việt có 28 chữ cái \n đúng hay sai ?",false),
    Questions("10. 72 phép Thiên Cang là của Trư Bát Giới ?",false),
    

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
   
        title: Text('Bài 5',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
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