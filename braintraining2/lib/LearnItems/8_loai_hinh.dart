import 'package:flutter/material.dart';
import 'package:braintraining2/LearnScreen.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoaiHinh extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('8 Loại hình thông minh',style: TextStyle(color: Colors.black),),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  
                  Positioned(
                    child: Align(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 35),

                            Image(image: AssetImage('assets/images/loaihinh.jpg')),

                            Text("1. Trí thông minh logic toán.",style: TextStyle(fontSize: 22)),
                            Text("2. Trí thông minh ngôn ngữ.",style: TextStyle(fontSize: 22)),
                            Text("3. Trí thông minh không gian.",style: TextStyle(fontSize: 22)),
                            Text("4. Trí thông minh cơ thể.",style: TextStyle(fontSize: 22)),
                            Text("5. Trí thông minh âm nhạc.",style: TextStyle(fontSize: 22)),
                            Text("6. Trí thông minh nội tâm.",style: TextStyle(fontSize: 22)),
                            Text("7. Trí thông minh tương tác cá nhân.",style: TextStyle(fontSize: 22)),
                            Text("8. Trí thông minh thiên nhiên.",style: TextStyle(fontSize: 22)),
                            Text("* Trước khi bắt đầu hãy chuẩn bị một chiếc bút và một cuốn sổ để thực hiện thử thách.",style: TextStyle(fontSize: 18)),


                            SizedBox(height: 35),
                            Text("1. Trí thông minh logic toán.",style: TextStyle(fontSize: 25)),
                            SizedBox(height: 20),
                            Text("1.1 Tính nhanh trong 3 phút :",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text("9 + 9 + 6 = ?  120 : 4 : 3 = ?  325 + 687 = ?",style: TextStyle(fontSize: 18)),
                            Text("84 - (56 -(30/3) = ?   5 x 35 x 3 = ?  2 x 5 x 7 x 11 = ?",style: TextStyle(fontSize: 18)),
                            Text("6,8/2,4 = ?       34 x 60 - 44 = ?     190 :  5 = ?    8 x 6 x 3 = ?",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text("1.2 Giải ô chữ Sudoku :",style: TextStyle(fontSize: 22),),
                            Text(" * Luật chơi : mỗi ô vuông 3 x 3 chứa 9 ô vuông nhỏ phải chứa các số từ 1 đến 9. Mỗi cột gồm 9 ô nhỏ, mỗi hàng gồm 9 ô nhỏ.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/sudoku_1.png')),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/sudoku_2.png')),
                            SizedBox(height: 20),

                            Text("1.3.Điền tiếp dãy số :",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 35),
                            Text("2.1. Bí quyết phát triển khả năng ngôn ngữ :",style: TextStyle(fontSize: 25),),
                            SizedBox(height: 20),
                            Text("* Lắng nghe những người thông minh, những diễn giả nói chuyện, tập trung vào khả năng lập luận của họ, họ có thể đưa ra lời khuyên thuyết phục hay giải thích một vấn đề hiệu quả , ngắn gọn.",style: TextStyle(fontSize: 18),),
                            Text("* Đọc nhiều sách hơn, để tiếp thu các từ ngữ trong ngữ cảnh khác nhau và cách tư duy độc đáo. Ghi nhớ các thông tin và tham khảo thêm qua các tài liệu khác. Điều này sẽ phát triển kĩ năng tư duy phê phán của bạn.",style: TextStyle(fontSize: 18),),
                            Text("* Bắt đầu viết nhật kí giúp phát triển khả năng diễn đạt ngôn ngữ .",style: TextStyle(fontSize: 18),),
                            Text("* Chơi trò chơi ô chữ giúp duy trì khả năng ngôn ngữ , nâng cao tư duy.",style: TextStyle(fontSize: 18),),
                            Text("HÃY BẮT ĐẦU NGAY THÔI !",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Text("2.2. Từ ngữ màu sắc : ghi lại màu của chữ mà không cần đọc nhé !",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/thong_minh_ngon_ng.png')),
                            

                            SizedBox(height: 20),
                            Text("2.4.Đố vui : ",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Text("Thử sức tại phần trắc nghiệm vui",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Text("2.5.Viết câu chuyện :",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/thong_minh_ngon_ngu_2.png')),
                            SizedBox(height: 20),
                            
                            Text("* Hãy viết một câu chuyện theo các hình gợi ý mà không tuân theo trình tự nào.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 35),
                            Text("3.1.Phương pháp tư duy hình ảnh :",style: TextStyle(fontSize: 25),),
                            SizedBox(height: 20),
                            Text("* Là phương pháp tổ chức ý tưởng giải quyết vấn đề , tập trung phát huy các khả năng về trí nhớ , sự tập trung , óc tổ chức ...",style: TextStyle(fontSize: 18),),
                            Text("* Ghi nhớ thông tin hiệu quả hơn bằng các cụ thể hóa các hình tượng.",style: TextStyle(fontSize: 18),),
                            Text("* Tăng tính sáng tạo , kết nối các ý tưởng rời rạc.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Text("3.2.Bí quyết :",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Text("* Tham gia các trò chơi đoán các hình mẫu phức tạp.",style: TextStyle(fontSize: 18),),
                            Text("* Nhận biết hình ảnh qua việc chơi xếp hình, lắp ráp đồ chơi, robot ...",style: TextStyle(fontSize: 18),),
                            Text("* Chơi xếp hình.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Text("3.3.1.Tạo được bao tam giác vuông bằng cách nối các chấm sau mà không đi qua các chấm khác (màu đỏ).",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 35),

                            Image(image: AssetImage('assets/images/khong_gian_1.png')),
                            SizedBox(height: 35),

                            Text("3.3.2 Dùng 3 hoặc 4 đường thẳng để nối tất cả các chấm tròn với nhau (màu vàng).",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),

                            Image(image: AssetImage('assets/images/khong_gian_2.png')),
                            SizedBox(height: 20),

                            Text("3.3.3.Đếm số :",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Text("9238560160193756838482910376582002847529256",style: TextStyle(fontSize: 18),),
                            Text("1038689393747629191657198476528413274957251",style: TextStyle(fontSize: 18),),
                            Text("- Có bao nhiêu chữ số ?",style: TextStyle(fontSize: 18),),
                            Text("- Có bao nhiêu số “0” ?",style: TextStyle(fontSize: 18),),
                            Text("- Có bao nhiêu số “4” và “ 3” ? (hãy đếm cùng lúc)",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Text("3.3.4.Tinh mắt :",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Text("* Đường thẳng kia có thẳng không ? (màu cam)",style: TextStyle(fontSize: 18),),
                            Image(image: AssetImage('assets/images/khong_gian_3.png')),

                            Text("* Hãy đếm có bao hình bình hành , tam giác ? (màu xanh)",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/khong_gian_4.png')),
                            SizedBox(height: 20),

                            Text("3.4.Dùng sơ đồ tư duy tổng hợp thông tin.",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/hoc_tap_b.png')),
                            SizedBox(height: 35),

                            Text("4.Trí thông minh cơ thể :",style: TextStyle(fontSize: 25),),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/co_the_1.png')),
                            SizedBox(height: 20),

                            Text("4.1.Tập thể dục :",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Text("* Bạn có biết tập thể dục không chỉ duy trì vóc dáng  nâng cao sức khỏe mà còn giúp nâng cao sức khỏe của não bộ, tinh thần.Ví dụ : tập đều đặn sẽ giúp những người ở độ tuổi 60 , 70 có trí nhớ lâu, linh hoạt hơn hẳn những người ít tập luyện.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Text("4.2.Các phương pháp đơn giản :",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Text("* Chạy bộ ,lên xuống cầu thang giúp thúc đẩy quá trình Oxy lên máu , nhịp tim nhanh hơn.",style: TextStyle(fontSize: 18),),
                            Text("* Khởi động chéo đầu gối.",style: TextStyle(fontSize: 18),),
                            Text("* Luyện tập tung hưng bóng giúp nâng cao khả năng phản xạ của não bộ , nâng cao sự kết hợp giữa tay và mắt.",style: TextStyle(fontSize: 18),),
                            Text("* Xoa bóp vị trí K-27 ở  xương đòn kết hợp thở bằng mũi và thở ra bằng miệng. Làm việc này thường xuyên giúp bạn gia tăng năng lượng , suy nghĩ sáng suốt và tinh thần dễ chịu.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            Text("4.3.Các thực phẩm tốt cho não.",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/co_the_2.png')),

                            Text("* Hoa quả giúp chống oxy hóa duy trì sức mạnh các tế bào não , đặc biệt là chuối - vua các loại hoa quả.",style: TextStyle(fontSize: 18),),
                            Text("* Cá chứa nhiều axit béo , Omega - 3 giúp tạo sự liên kết cho các tế bào não.",style: TextStyle(fontSize: 18),),
                            Text("* Rau xanh , rau củ , đặc biệt là bơ cung cấp protein cao và chất béo , chất xơ folate giúp chống oxy hóa hấp thụ thức ăn.",style: TextStyle(fontSize: 18),),
                            Text("* Trứng và Socola đen chứa magie và polyphenol cao giúp giảm huyết áp , an giúp trí não minh mẫn hơn.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 35),
                            Text("5.Trí thông minh âm nhạc :",style: TextStyle(fontSize: 25),),
                            SizedBox(height: 20),
                            Text("5.1.1. Nghe các loại nhạc cổ điển ,giao hưởng , Opera :",style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20),
                            Text("* Nâng cao tính tư duy , tăng năng suất học tập.",style: TextStyle(fontSize: 18),),
                            Text("* Các nghiên cứu chỉ ra rằng nhạc Mozart có khả năng dùng trong tâm lý trị liệu.",style: TextStyle(fontSize: 18),),
                            Text("* Tăng cường khả năng thị giác.",style: TextStyle(fontSize: 18),),
                            Text("* Ổn định nhịp tim, giảm stress , phục hồi thần kinh.",style: TextStyle(fontSize: 18),),
                            Text("* Kích thích trí não sản xuất ra những cảm xúc tích cực, tâm trí thoải mái.",style: TextStyle(fontSize: 18),),

                            Text("* Tăng khả năng sáng tạo trong nhiều lĩnh vực.",style: TextStyle(fontSize: 18),),
                            Text("* Tăng cường cảm xúc.",style: TextStyle(fontSize: 18),),
                            Text("- Phương pháp phát triển :",style: TextStyle(fontSize: 18),),
                            Text("* Hát trong lúc tắm.",style: TextStyle(fontSize: 18),),
                            Text("* Học một loại nhạc cụ tăng phản xạ kích thích trí tuệ của não bộ",style: TextStyle(fontSize: 18),),
                            Text("* Thường xuyên lắng nghe các loại nhạc jazz , cổ điển , dân ca , tham gia các buổi hòa nhạc, độc tấu",style: TextStyle(fontSize: 18),),
                            
                            Text("* Thảo luận , nói chuyện về đề tài âm nhạc.",style: TextStyle(fontSize: 18),),
                            Text("* Lắng nghe các giai điệu ,âm thanh xung quanh bạn như tiếng nước chảy, tiếng chim hót...",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 35),
                            Text("6.Trí thông minh nôi tâm :",style: TextStyle(fontSize: 25),),
                            SizedBox(height: 20),
                            Text("* Những người có trí thông minh nội tâm thường trầm lắng, hay suy nghĩ và tư duy do đó khá biệt lập trong đời sống xã hội nhưng ngược lại theo thống kê khoa học thì các phát kiến vĩ đại của nhân loại trong rất nhiều lĩnh vực đều xuất phát từ đối tượng này.",style: TextStyle(fontSize: 18),),
                            Text("* Trầm mặc, ít nói và phát biểu trong mọi hoàn cảnh.",style: TextStyle(fontSize: 18),),
                            Text("* Xuất sắc trong việc lập kế hoạch, dự báo và đề ra mục tiêu cho tổ chức.",style: TextStyle(fontSize: 18),),
                            Text("* Cực kỳ tự chủ và độc lập trong làm việc, tự giác, thẳng thắn và rất cầu toàn.",style: TextStyle(fontSize: 18),),
                            Text("Chuyên tâm hoàn toàn trong việc tư duy, lên chiến lược cho các hoạt động của tổ chức.",style: TextStyle(fontSize: 18),),
                            Text("Thường xuyên đặt mục tiêu và trực tiếp thực hiện mục tiêu bằng mọi giá.",style: TextStyle(fontSize: 18),),
                            Text("Hay đưa ra các phát kiến cải tiến, phát minh sản phẩm, dịch vụ một cách đột phá.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 35),
                            Text("7.Trí thông minh tương tác cá nhân :",style: TextStyle(fontSize: 25),),
                            SizedBox(height: 20),
                            Text("* Trí thông minh tương tác cá nh là năng lực hiểu, cảm thông và làm việc được với người khác. Một cá nhân có trí thông minh giao tiếp có thể rất giàu lòng trắc ẩn và có tinh thần trách nhiệm cao với xã hội, hoặc là người có sức lôi cuốn với tập thể, có khả năng thấu hiểu người khác và từ đó nhìn ra viễn cảnh của thế giới bên ngoài bằng chính cặp mắt của những người bên trong. Trong thực tế, họ thường rất tuyệt vời trong vai trò của người hòa giải, kết nối, hoặc trên tư cách của một thầy giáo, một nhà tư vấn tâm lý.",style: TextStyle(fontSize: 18),),
                            Text("* Biểu hiện :",style: TextStyle(fontSize: 18),),
                            Text("Thường được người khác tìm đến để nghe lời khuyên và tư vấn về công việc và bạn thích lãnh đạo và thích làm việc trong một nhóm hơn là làm việc một mình.",style: TextStyle(fontSize: 18),),
                            Text("Bạn cảm thấy thoải mái khi đứng trước đám đông và bạn có khả năng diễn đạt lưu loát ý tưởng của mình trước một cũng như nhiều người.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 35),
                            Text("8.Trí thông minh thiên nhiên :",style: TextStyle(fontSize: 25),),
                            SizedBox(height: 20),
                            Text("* Trẻ em thông minh tự nhiên thường có sự kết nối mạnh mẽ với thế giới bên ngoài hay động vật và yêu thích các hoạt động ngoài trời. Chúng nhận biết các mô hình hay thứ gì từ tự nhiên một cách dễ dàng và cũng thích sưu tập các loại hoa và đá. Trẻ có thể yêu thích những câu chuyện, chương trình hay bất cứ vấn đề nào có quan hệ tới động vật hay các diễn biến tự nhiên. Trẻ cũng quan tâm và chăm sóc cây cối, động vật. Những đứa trẻ này cũng thể hiện sự hứng thú với sinh vật học, thiên văn học, khí tượng học và động vật học. Trẻ cũng quan tâm đến các loài động vật có nguy cơ tuyệt chủng. Những đứa trẻ có trí thông minh tự nhiên có thể tìm hiểu về đặc điểm, tên hay bất cứ thông tin nào về các loài được tìm ra trên thế giới khá dễ dàng.",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 20),
                            
                           
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
