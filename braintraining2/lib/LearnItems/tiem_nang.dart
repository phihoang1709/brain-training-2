import 'package:flutter/material.dart';
import 'package:braintraining2/LearnScreen.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TiemNang extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiềm năng bộ não',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Tiềm năng bộ não',style: TextStyle(color: Colors.black),),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LearnScreen()));
          } ),
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
        body: SingleChildScrollView(
          
          child: Stack(           
            children: <Widget>[              
              
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  Positioned(
                    child: Align(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50),
                          Image(image: AssetImage('assets/images/brain.jpeg')),
                          SizedBox(height: 30),
                            Text("* Não là thực thể phức tạp nhất , giúp thu nhận, xử lí , lưu trữ thông tin.",style: TextStyle(fontSize: 18)),
                            Text("* Nó có nhiều tiềm năng hơn những gì bạn nghĩ. Nó làm việc liên tục ,phát ra các xung điện nhiều hơn tất cả các điện thoại trên thế giới.",style: TextStyle(fontSize: 18)),
                            Text("* Ước tính có khoảng 10^800 tế bào não.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 30),
                            Image(image: AssetImage('assets/images/brain_2.jpg')),
                            SizedBox(height: 30),
                            Text("* Nơ ron là những tế bào thần kinh truyền thông tin bằng cách đưa ra các tín hiệu điện hóa. Là bộ phận cốt lõi của bộ não và tủy sống.",style: TextStyle(fontSize: 18)),
                            Text("* Mỗi nơ ron kết nối khoảng 10.000 nơ ron khác.",style: TextStyle(fontSize: 18)),
                            Text("* Vỏ myelin hoạt động như một lớp cách li, làm tăng tốc độ và công suất các xung.",style: TextStyle(fontSize: 18)),
                          SizedBox(height: 30),
                            Image(image: AssetImage('assets/images/brain_3.png')),
                            SizedBox(height: 50),

                        ],
                      ),
                    )
                    )
                ],
              )
            ],
            
          ),
          
        )

      ),
    );
  }
}
