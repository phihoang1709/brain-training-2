import 'package:braintraining2/LearnScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';


class SongKhoe extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rèn luyện sống khỏe',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Rèn luyện sống khỏe',style: TextStyle(color: Colors.black),),
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
                            
                            
                            Image(image: AssetImage('assets/images/song_khoe_3.png')),
                            SizedBox(height: 35),
                            Text(" Rèn luyện sống khỏe",style: TextStyle(fontSize: 25)),
                            SizedBox(height: 20),
                            Text(" 1. Khoa học giấc ngủ",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" * Giấc  ngủ là một quá trình vô cùng quan trọng trong một ngày , việc thiếu ngủ để lại hậu quả vô cùng nghiêm trọng. Việc có một giấc ngủ ngon sau một ngày sẽ đem lại một cảm giác dễ chịu và một trí tuệ minh mẫn. Giấc ngủ điều chỉnh nhịp độ sinh học hòa hợp tự nhiên so với chu kì ánh sáng của bóng đêm nhận biết bởi mắt.",style: TextStyle(fontSize: 18)),
                            Text(" * Mỗi người cần một thời gian ngủ trong ngày khác nhau có người chỉ cần ngủ 7 - 8 h nhưng có người lại cần đến 9h để ngủ.",style: TextStyle(fontSize: 18)),
                            Text(" * Một chu kì ngủ của con người là khoẳng 90 phút. Trung bình một đêm con người cần đến 6h đến 7,5 h để ngủ. Việc bạn cảm thấy mệt mỏi sau giấc ngủ là do bạn thức dậy trong khi cơ thể đang ở trong giai đoạn ngủ sâu hoặc ngủ rất sâu, để có một cơ thể sảng khoái thì bạn nên thức dậy vào lúc cơ thể đang trong trạng thái ru ngủ hoặc ngủ nông.",style: TextStyle(fontSize: 18)),
                            Text(" * Giả sử bạn ngủ lúc  12h đêm nhưng lại cần dậy vào lúc 5h vậy làm thế nào để thức dậy như vậy bây giờ ? Hãy tính bằng công thức sau:",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/song_khoe_4.png')),
                            SizedBox(height: 20),
                            Text(" Thời gian ngủ = 1,5h x số chu kì ngủ",style: TextStyle(fontSize: 18)),
                            Text(" (Tối đa số chu kì ngủ một đêm là từ 3 - 6 chu kì)",style: TextStyle(fontSize: 18)),
                            Text(" 12h + 1,5 * 3 = 4,5h sáng.",style: TextStyle(fontSize: 18)),
                            Text(" * Tìm hiểu những phương pháp ngủ “kì quặc.",style: TextStyle(fontSize: 18)),
                            Text(" 1.1. Phong cách Dymaxion - 2h .Công thức: Mỗi 6h ngủ một lần, mỗi lần 30 phút.Tổng cộng thời gian ngủ 2h.Kiến trúc sư Hoa Kỳ Buckminster Fuller là người đã nghĩ ra phương pháp ngủ này. Bản thân ông luôn ngủ như vậy, và ông cho biết mình luôn cảm thấy tràn đầy năng lượng.",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" 1.2. Ngủ kiểu Leonardo Davinci . Công thức: Mỗi 4h ngủ một lần mỗi lần 20 phút.",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" 1.3. Ngủ kiểu Siesta - 6,5h",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" Công thức: 5h ngủ ban đêm + 1,5 h ngủ ban ngày = 6,5h.",style: TextStyle(fontSize: 18)),
                            Text(" Winston Churchill thực hiện chính xác công thức ngủ này. Ông lên giường vào lúc 3h sáng, dậy lúc 8h, sau đó ngủ thêm 1,5h buổi ",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 1.4. Phong cách Tesla - 2h 20 phút.",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" Công thức ngủ: 2h ban đêm + 20 phút ban ngày = 2h 20 phút.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 35),
                            Image(image: AssetImage('assets/images/thien.png')),
                            SizedBox(height: 35),
                            Text(" 2.Thiền",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" * Đây là hình thức luyện tập dựa trên quan sát hơi thở.",style: TextStyle(fontSize: 18)),
                            Text(" Mục đích tập trung trí óc thông qua các câu niệm ,âm thanh, hơi thở tạo ra trạng thái hoàn toàn tĩnh lặng, giúp lọai bỏ các cảm xúc tiêu cực đạt đến chánh niệm.",style: TextStyle(fontSize: 18)),
                            Text(" * Chọn một môi trường yên bình. Thiền nên được thực hiện ở một nơi yên tĩnh và thanh bình. Điều này sẽ cho phép bạn tập trung hoàn toàn và tránh bị phân tâm bởi các kích thích bên ngoài. Cố gắng tìm một nơi mà bạn sẽ không bị bị làm phiền trong suốt thời gian thiền của bạn - cho dù nó kéo dài năm phút hoặc nửa giờ. Không gian không cần phải quá rộng – phòng nhỏ hoặc thậm chí văn phòng của bạn cũng có thể được sử dụng cho việc thiền định, miễn là nó kín đáo và riêng tư.",style: TextStyle(fontSize: 18)),
                            Text(" * Mặc quần áo thoải mái. Một trong những mục tiêu chính của thiền là để tĩnh tâm và phong tỏa các yếu tố bên ngoài. Điều này có thể khó khăn nếu cơ thể bạn không thoải mái do mặc quần áo chật hoặc khó chịu. Hãy mặc quần áo rộng rãi trong lúc thiền và chắc chắn là đã tháo giày của bạn ra.",style: TextStyle(fontSize: 18)),
                            Text(" * Ngồi ở vị trí thoải mái. Như đã nêu ở trên, điều rất quan trọng là bạn phải cảm thấy thoải mái trong khi ngồi thiền, đó là lý do tại sao tìm được vị trí tốt nhất cho bạn là điều cần thiết . Hãy chọn một tư thế cho phép bạn ngồi thẳng và giữ được cân bằng.",style: TextStyle(fontSize: 18)),
                            Text(" * Theo dõi hơi thở của bạn. Kĩ thuật cơ bản nhất và phổ biến nhất trong tất cả các kỹ thuật thiền, thiền thở, là kỹ thuật tuyệt vời để bắt đầu việc thực hành thiền của bạn. ",style: TextStyle(fontSize: 18)),
                            Text(" * Thả lỏng từng điểm trên cơ thể. Thả lỏng từng điểm trên cơ thể chính là tập trung lần lượt vào từng phần cơ thể và thả lỏng nó một cách có ý thức",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 35),
                            Text(" 3.Yoga",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/song_khoe_.jpg')),
                            SizedBox(height: 20),
                            Text(" * Yoga là hình thức luyện tập cổ xưa đã có trên 5000 năm tuổi. Việc tập yoga làm dịu đi hệ thống dây thần kinh, cân bằng cơ thể và tâm trí.  Có thể ngăn ngừa một số bệnh nhất định bằng cách giữ các luồng năng lượng được khai mở và luân chuyển.",style: TextStyle(fontSize: 18)),
                            Text(" * Yoga được tập để hạ huyết áp, giảm căng thẳng , cải thiện sự linh hoạt, khả năng tập trung giấc ngủ và tiêu hóa.",style: TextStyle(fontSize: 18)),
                            Text(" - Các động tác cơ bản:",style: TextStyle(fontSize: 18)),
                            Text(" * Động tác kéo gối",style: TextStyle(fontSize: 18)),
                            Text(" - Nằm ngửa ra sàn, sau đó co gối 1 chân lên và dùng 2 tay kéo gối sát vào người hơn.Giữ trong 20s và lặp lại với chân kia. Thực hiện mỗi chân 7 lần.",style: TextStyle(fontSize: 18)),
                            Text(" * Tư thế rắn hổ mang",style: TextStyle(fontSize: 18)),
                            Text(" - Úp 2 tay xuống sàn, 2 tay đặt 2 bện ngực , mũi bàn tay hướng ra trước. Nâng ngực lên khỏi sàn, duỗi thẳng tay , Lưng uốn vầ phía sau, mặt ngửa giữ trong vòng 30s và trở về tư thế nằm xấp và lặp lại 7 lần.",style: TextStyle(fontSize: 18)),
                            Text(" * Động tác đứa trẻ",style: TextStyle(fontSize: 18)),
                            Text(" - Ngồi trên 2 chân. gập người xuống trước ,2 tay duỗi thẳng, nằm im trong 30s.Quay trở lại và lặp lại 7 lần.",style: TextStyle(fontSize: 18)),
                            Text(" * Tư thế ngồi vặn người",style: TextStyle(fontSize: 18)),
                            Text(" - Ngồi thẳng lưng, duỗi thẳng 2 chân , bắt chân phải qua mép trái chân trái . Vặn người sang phải giữ trong 30s. Lặp lại 7 lần.",style: TextStyle(fontSize: 18)),
                            Text(" * Ngồi mở rộng hông",style: TextStyle(fontSize: 18)),
                            Text(" - Ngồi trên sàn nhà , úp hai lòng bàn  chân vào nhau đùi mở sang 2 bên , ép đùi xuống sàn và nâng liên tục trong 2 phút.",style: TextStyle(fontSize: 18)),
                            
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