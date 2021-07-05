import 'package:braintraining2/LearnScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DocHieu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đọc hiểu siêu tốc',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Đọc hiểu siêu tốc',style: TextStyle(color: Colors.black),),
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
                          SizedBox(height: 30),
                            SizedBox(height: 35),
                            Image(image: AssetImage('assets/images/doc_sach.png')),
                            SizedBox(height: 35),

                            Text(" Tăng tốc độ đọc hiểu",style: TextStyle(fontSize: 25)),
                            SizedBox(height: 20),
                            Text(" 1.Lợi ích của việc đọc sách :",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            
                            Text(" * Sách có lợi ích vô cùng to lớn mà mỗi chúng ta có thể chưa biết hết về nó. Hãy cùng tìm hiểu xem, sách có những lợi ích gì mà từ trẻ em, học sinh, sinh viên, các bạn trẻ, những người trưởng thành, cho đến các bác lớn tuổi vẫn đọc sách và được khuyến khích đọc sách như vậy nhé.",style: TextStyle(fontSize: 18)),
                            Text(" * Đọc sách giúp nâng cao kiến thức.",style: TextStyle(fontSize: 18)),
                            Text(" * Cải thiện sự tập trung và tăng cường kỹ năng tư duy, phân tích.",style: TextStyle(fontSize: 18)),
                            Text(" * Vốn từ ngữ được mở rộng thông qua việc đọc sách.",style: TextStyle(fontSize: 18)),
                            Text(" * Tác dụng của việc đọc sách giúp cải thiện trí nhớ.",style: TextStyle(fontSize: 18)),
                            Text(" * Kích thích tinh thần.",style: TextStyle(fontSize: 18)),
                            Text(" * Giải trí tinh thần, trí óc.",style: TextStyle(fontSize: 18)),
                            Text(" * Điều khiển cảm xúc của bản thân.",style: TextStyle(fontSize: 18)),
                            Text(" * Tạo dựng một thói quen lành mạnh.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 2.Tăng tốc độ đọc sách.",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" * Làm thế nào để tiếp thu kiến thức nhiều hơn thông qua sách, trong khi thời gian trong một ngày của mỗi người quá bận rộn, không có thời gian đọc sách, chúng ta lười đọc vì chúng ta đọc rất chậm, chưa biết tóm tắt nội dung , chưa có kĩ năng đọc, chưa ứng dụng được nội dung vào cuộc sống.",style: TextStyle(fontSize: 18)),        
                            Text(" * Trung bình một người đọc được khoảng 300 đến 600 từ một phút , nhưng có người sử dụng những phương pháp đọc nhanh mà có thể đọc vài nghìn thậm chí đến chục nghìn từ.",style: TextStyle(fontSize: 18)),
                            Text(" * Có thể bạn chưa biết :",style: TextStyle(fontSize: 18)),
                            Text(" - Việc bạn đọc chậm sẽ khiến bạn tiếp thu thông tin rời rạc, và gây mất tập trung.",style: TextStyle(fontSize: 18)),
                            Text(" - Đọc nhanh sẽ hiểu nhiều hơn , khi đọc có mức độ tập trung cao hơn vì chúng ta bị áp lực nhiều hơn và sẽ có thời gian xem lại những phần đặc biệt quan tâm hoặc có nội dung liên quan.",style: TextStyle(fontSize: 18)),
                            Text(" - Đọc ở tốc độ trung bình không phải là điều bình thường , mà đó là những gì ta đã được dạy.",style: TextStyle(fontSize: 18)),
                            Text(" * Tốc độ đọc hiểu hoàn toàn có thể cải thiện thông qua luyện tập.",style: TextStyle(fontSize: 18)),
                            Text(" * Quá trình đọc :",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 30),
                            Image(image: AssetImage('assets/images/doc_sach_2.png')),
                            SizedBox(height: 30),
                            Text(" 1. Nhận biết.",style: TextStyle(fontSize: 22)),
                            Text(" 2. Hấp thu.",style: TextStyle(fontSize: 22)),
                            Text(" 3. Hiểu (Hợp nhất bên trong)",style: TextStyle(fontSize: 22)),
                            Text(" 4. Kiến thức hóa.",style: TextStyle(fontSize: 22)),
                            Text(" 5. Ghi nhớ.",style: TextStyle(fontSize: 22)),
                            Text(" 6. Nhớ lại.",style: TextStyle(fontSize: 22)),
                            Text(" 7. Truyền đạt.",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" * Các vấn đề thường gặp:",style: TextStyle(fontSize: 18)),
                            Text(" Số lượng  Sức nhìn  Tốc độ  Nhận thức  Thời gian",style: TextStyle(fontSize: 18)),
                            Text(" Ghi chú  Ghi nhớ  Sợ hãi  Mệt mỏi  Phân tích  Tổ chức  Đọc lại",style: TextStyle(fontSize: 18)),
                            Text(" Chọn lọc  Từ vựng  Đọc thầm   Tập trung  Đọc lại các từ",style: TextStyle(fontSize: 18)),
                            Text(" * Kĩ thuật đọc(từ trái qua phải) :",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 30),
                            Image(image: AssetImage('assets/images/doc_sach_3.png')),
                            SizedBox(height: 30),
                            Text(" 1. Quét dòng đôi kết hợp chiều ngang và dọc.",style: TextStyle(fontSize: 18)),
                            Text(" 2. Quét biến thiên tiếp thu kiến thức tùy vào năng lực.",style: TextStyle(fontSize: 18)),
                            Text(" 3. Quét dòng ZICZAC có khả năg tiếp thu 5 - 6 từ một lúc.Chỉ cần hình dung đoạn đang đọc.",style: TextStyle(fontSize: 18)),
                           
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