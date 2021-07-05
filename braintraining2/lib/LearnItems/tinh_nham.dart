import 'package:braintraining2/LearnScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TinhNham extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tính nhẩm siêu tốc',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Tính nhẩm siêu tốc',style: TextStyle(color: Colors.black),),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LearnScreen()));
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
                    child: Align(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 35),
                            
                            Image(image: AssetImage('assets/images/tinh_nh.jpg')),
                            SizedBox(height: 35),

                            Text(" Tính nhẩm siêu tốc",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 1.Nhân chia",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" * Nhân , chia một số với 5:",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân 5 : Chia cho 2 và nhân với 10. Ngược lại với chia 5",style: TextStyle(fontSize: 18)),
                            Text(" * Nhân với 11:",style: TextStyle(fontSize: 18)),
                            Text(" abcd x 11 = a(a+b)(b+c)(c+d)d",style: TextStyle(fontSize: 18)),
                            Text(" - Cộng chữ số hàng đơn vị với số liền trái nó ( nhớ nếu tổng lớn hơn hoặc bằng 10)",style: TextStyle(fontSize: 18)),
                            Text(" - Dịch sang bên trái một chữ số, cộng với cái liền trái nó ( nhớ nếu tổng lớn hơn hoặc bằng 10)",style: TextStyle(fontSize: 18)),
                            Text(" - Khi viết đến số đầu tiên thì viết nó ( nhớ nếu tổng lớn hơn hoặc bằng 10)",style: TextStyle(fontSize: 18)),
                            Text(" - VD : 11 x 45 = 495",style: TextStyle(fontSize: 18)),
                            Text(" 1763 x 11 =",style: TextStyle(fontSize: 18)),
                            Text(" Viết 3 / 3+6 =9 / 7+6 = 13/ 7 +1 + 1= 9 / Viết 1 . Kết quả 19393.",style: TextStyle(fontSize: 18)),
                            Text(" * Nhân một số với 12 - 19 :",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân số  với 1a : nhân a với chữ số cuối cùng của  ( Nhớ nếu tích lớn hơn hoặc bằng 10 )",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân các số còn lại với a . Lấy tích đó cộng với  . Viết kết quả",style: TextStyle(fontSize: 18)),
                            Text(" - VD : 43 x 16 = 688",style: TextStyle(fontSize: 18)),
                            Text(" * Nhân một số với 25 hoặc 50",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân số   với 25 : chia cho 4 và thêm 2 số 0 phía sau ( với 50  thì chia 2) . 2 số cuối có kết quả như sau ( phụ thuộc vào số dư ) :",style: TextStyle(fontSize: 18)),
                            Text(" - / 4 = 0 ( 00)",style: TextStyle(fontSize: 18)),
                            Text(" -  / 4 = 1 ( 25)",style: TextStyle(fontSize: 18)),
                            Text(" -  / 4 = 2 (50)",style: TextStyle(fontSize: 18)),
                            Text(" VD: 112 x 25 = 2800 ( 112/4 = 28  dư 0)",style: TextStyle(fontSize: 18)),
                            Text(" * Nhân hai số giống chữ số hàng chục :",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân 2 số hàng đơn vị với nhau ( Nhớ nếu lớn hơn 10)",style: TextStyle(fontSize: 18)),
                            Text(" - Cộng tổng 2 chữ số hàng đơn vị và nhân với chữ số hàng chục.",style: TextStyle(fontSize: 18)),
                            Text(" - Bình phương số hàng chục cộng với nhau",style: TextStyle(fontSize: 18)),
                            Text(" VD :",style: TextStyle(fontSize: 18)),
                            Text(" 37 x 32 =",style: TextStyle(fontSize: 18)),
                            Text(" 7 x 2 = 14 (nhớ 1)",style: TextStyle(fontSize: 18)),
                            Text(" (7+2) x3 +1 = 28 (nhớ 2)",style: TextStyle(fontSize: 18)),
                            Text(" 3 x 3 = 9 +2 = 11",style: TextStyle(fontSize: 18)),
                            Text(" Kết quả : 1184.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 2.Bình phương số có hai chữ số",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" - Bình phương số hàng đơn vị",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân số hàng đơn vị",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân chữ số hàng đơn vị với chữ số hàng chục và nhân tiếp với 2",style: TextStyle(fontSize: 18)),
                            Text(" - Bình phương chữ số hàng chục.",style: TextStyle(fontSize: 18)),
                            Text(" - VD :",style: TextStyle(fontSize: 18)),
                            Text(" = 16 ( nhớ 1)",style: TextStyle(fontSize: 18)),
                            Text(" 4 x 5 x 2 + 1 = 41 ( nhớ 4)",style: TextStyle(fontSize: 18)),
                            Text(" + 4 = 29",style: TextStyle(fontSize: 18)),
                            Text(" Kết quả 2916.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 3.Phương pháp FOIL",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" - Nhân hai chữ số hàng đơn vị với nhau.",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân số bên trong và số bên ngoài với nhau rồi cộng chúng lại.",style: TextStyle(fontSize: 18)),
                            Text(" - Nhân chữ số hàng chục với nhau",style: TextStyle(fontSize: 18)),
                            Text(" - VD : 13 x 44 =",style: TextStyle(fontSize: 18)),
                            Text(" 3 x 4 = 12 ( nhớ 1)",style: TextStyle(fontSize: 18)),
                            Text(" 4 x1 + 4 x3 + 1 = 17 ( nhớ 1)",style: TextStyle(fontSize: 18)),
                            Text(" 4x1 + 1=5",style: TextStyle(fontSize: 18)),
                            Text(" Đáp án 572.",style: TextStyle(fontSize: 18)),

                            SizedBox(height: 50),
                        ],
                      ),
                    )
                    )
                ],
              )
            ],
            
          ),
          
        ),
        floatingActionButton: SpeedDial(
          
          closeManually: false,
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.thumbsUp),
              label: "Thích",
              backgroundColor: Colors.blue,
              onTap: () {
                Fluttertoast.showToast(msg: "Đã thích !");
              },
            ),
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.thumbsDown),
              label: "Không thích",
              backgroundColor: Colors.blue,
              onTap: () {
                Fluttertoast.showToast(msg: "Đã không thích !");
              },
            )
          ],
        ),
      ),
    );
  }

}