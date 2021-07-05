import 'package:braintraining2/LearnScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HocTap extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Học tập',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Học tập',style: TextStyle(color: Colors.black),),
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
                            Image(image: AssetImage('assets/images/nho_lau_2.png')),
                            SizedBox(height: 35),
                            Text("  Phương pháp nhớ lâu trong học tập",style: TextStyle(fontSize: 25)),
                            
                            SizedBox(height: 20),
                            Text(" 1.Nhớ lâu trong học tập và cuộc sống :",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" * Việc sở hữu trí nhớ lâu trong học tập như một món quà quý giá. Một trí nhớ tuyệt vời giúp ta đứng đầu lớp học , được mọi người khen ngợi, thoải mái trong cuộc sống hàng ngày , sẵn sàng  “đối đầu” với mọi thử thách trong cuộc sống.",style: TextStyle(fontSize: 18)),
                            Text(" * Hãy cùng bắt tay rèn luyện trí nhớ để sẵn sàng tiến bộ ngay thôi !!!",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 2. Bí quyết nhớ lâu trong học tập và cuộc sống :",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" 2.1. Hiểu thật rõ về bài học",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/nho_lau_3.png')),
                            SizedBox(height: 20),
                            Text(" * Việc bạn hiểu rõ bài học chỉ xảy ra khi bạn hiểu rõ . Đừng nên chép lại máy móc các bài giảng của giáo viên và vừa nghe giảng vừa chép bài ! Tại sao vậy ? Vì đây là hai loại hoạt động hoàn toàn trái ngược nhau , nghe là thụ động còn viết lại là chủ động. Việc bạn cố gắng chép lại các lời của giáo viên sẽ khiến bạn mất đi phần lớn lượng kiến thức trong bài học. Chúng ta rất khó để hoàn thành tốt hai việc trong cùng một lúc. Vậy mục tiêu trong lúc học đó là nghe. Tóm lại quá trình chép lại bài giảng sẽ không tiếp thu bài học",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 2.2.Dùng các từ khóa, tóm lược ý chính trong bài :",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/nho_lau_4.png')),
                            SizedBox(height: 20),
                            Text(" * Hãy đọc đoạn sau :",style: TextStyle(fontSize: 18)),
                            Text(" Trên sao Kim có nhiều núi lửa hơn so với Trái đất .Bề mặt của sao Kim 80 % chủ yếu cấu thành các bình nguyên núi lửa ngoài ra có hai dãy núi chính với nhiều núi lửa có thể đang hoạt động . Đỉnh của ngọn núi Maxwell Montes cách bề mặt của hành tinh này 11 km, trong khi đó đỉnh Everest chỉ cao 8.848 km.",style: TextStyle(fontSize: 18)),
                            Text(" * Hãy chọn ra các từ khóa:",style: TextStyle(fontSize: 18)),
                            Text(" - Sao Kim > Trái đất (núi lửa).",style: TextStyle(fontSize: 18)),
                            Text(" - 80% : bình nguyên núi lửa.",style: TextStyle(fontSize: 18)),
                            Text(" - Hai dãy chính : có thể hoạt động.",style: TextStyle(fontSize: 18)),
                            Text(" - Độ cao : Maxwell Montes 11km.",style: TextStyle(fontSize: 18)),
                            Text(" : Everest 8.848 km.",style: TextStyle(fontSize: 18)),
                            Text(" * Các từ in đậm là các từ khóa cần nhớ trong bài.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 2.3.Phương pháp liên tưởng ( Loci \ Roman room)",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" * Việc sử dụng thành công phương pháp liên tưởng quả thực là một điều tuyệt vời ! Từ những kiến thức có phần “khô khan” ta liên tưởng đến những thứ gần gũi xung quanh . Não bộ con người chỉ nhớ lâu những thứ mà gây ấn tượng mạnh như những sự kiện quan trọng trong đời, ngày sinh nhật của người thân ...",style: TextStyle(fontSize: 18)),
                            Text(" * Để ghi nhớ các đồ vật , cách tốt nhất là gán chúng vào một câu chuyện “kì quặc”, hài hước thân thiện với bản thân.",style: TextStyle(fontSize: 18)),
                            Text(" * Hãy thử sức nhớ các đồ vật sau :",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/nho_lau_5.png')),
                            SizedBox(height: 20),
                            Text(" * Ghi nhớ theo câu chuyện sau ( hãy sáng tạo thêm , khác với ví dụ ) :",style: TextStyle(fontSize: 18)),
                            Text(" Bạn hãy tưởng tượng vào một ngày nhiều MÂY , một người cứu hộ cầm PHAO về nhà. Anh cầm BẬT LỬA châm điếu thuốc , anh dùng MÁY ẢNH chụp cảnh trời đang sáng và rất nhiều SAO !!? và CÂY THÔNG bên đường . Về đến nhà anh mở Ổ KHÓA bằng DAO , vào bếp tìm đồ ăn .Hôm nay anh ăn ĐÙI GÀ và CÀ RỐT ,vừa ăn vừa nghe NHẠC , tay kia cầm CHUộT thả LIKE và TRÁI TIM  cho cái ĐỒNG HỒ trên  MXH FACE BOOK .",style: TextStyle(fontSize: 18)),
                            Text(" * Liên tưởng câu chuyện trên gắn với khung cảnh thân thuộc với bạn cộng thêm các chi tiết kì quặc hài hước mà bạn thêm vào thì ghi nhớquả thật không có gì khó phải không nào ?",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 2.4.Lưu trữ các con số “ khô khan” :",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" * Việc ghi nhớ số nhà , số điện thoại hay các hằng số vật lí , toán học , độ cao diện tích vật , các mốc lịch sử quan trọng với nhiều người quả là một cực hình , nhưng nếu ghi nhớ được chúng thì quả thật rất hữu ích, vậy làm sao để nhớ chúng bây giờ ???",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 2.4.1.Hình tượng hóa chúng + dùng phương pháp loci :",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/nho_lau_6.png')),
                            
                            SizedBox(height: 20),
                            Text(" 1. Cái bút.  6. Số chân con muỗi.",style: TextStyle(fontSize: 18)),
                            Text(" 2. Con vịt.  7. Trái đất*.",style: TextStyle(fontSize: 18)),
                            Text(" 3. Cánh quạt trần. 8. Cái kính.",style: TextStyle(fontSize: 18)),
                            Text(" 4. Chân bàn/ Ghế.  9. Con nai (nine).",style: TextStyle(fontSize: 18)),
                            Text(" 5. Bàn tay. 0. Trứng.",style: TextStyle(fontSize: 18)),
                            Text(" (*) Theo đạo Hindu số 7 tượng trưng cho Trái đất",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" * Mã hóa chúng bằng các con chữ",style: TextStyle(fontSize: 18)),
                            Text(" - Ví dụ lấy chữ cái đầu của số :",style: TextStyle(fontSize: 18)),
                            Text(" 1. M (Một).    6. S ( Six).",style: TextStyle(fontSize: 18)),
                            Text(" 2. T (Two).    7. Ba (Bảy).",style: TextStyle(fontSize: 18)),
                            Text(" 3. B (Ba).     8. E (Eight).",style: TextStyle(fontSize: 18)),
                            Text(" 4. F (Four).   9. C (Chín).",style: TextStyle(fontSize: 18)),
                            Text(" 5. N ( Năm).   0. Z (Zero).",style: TextStyle(fontSize: 18)),
                            Text(" * Lẻ lấy tiếng việt , chẵn lấy tiếng anh, cố gắng chèn thêm từ để tạo thành từ có nghĩa.",style: TextStyle(fontSize: 18)),
                            Text(" Ví dụ : số 90530285514: CON BÒ ăN Cỏ Tiến tới quán kEm Nằm Ngủ Một F.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text(" 2.4.2. Thời gian đỏ và xanh:",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text(" * Có bài báo từng viết : “Có hai loại kiểu người đó là người của buổi sáng và người của buổi tối, người buổi sáng thích dậy sớm và làm việc hiệu quả còn người buổi tối thì lại ngược lại”.",style: TextStyle(fontSize: 18)),
                            Text(" * Thời gian mà mọi người cảm thấy khỏe khoắn nhất khác nhau, nhưng đều có hai khoảng thời gian làm việc tốt nhất (thời gian xanh) , và thời gian làm việc kém nhất( thời gian đỏ). Việc sử dụng chúng hiệu quả là vô cùng quan trọng. Bạn hãy tìm hiểu thời gian xanh và thời gian đỏ của mình và làm như sau:",style: TextStyle(fontSize: 18)),
                            Text(" - Thời gian xanh : là lúc nên học hay làm những việc sử dụng nhiều về tư duy , đưa ra quyết định như ôn thi ,làm việc nhóm , học các môn KHTN  ...",style: TextStyle(fontSize: 18)),
                            Text(" - Thời gian đỏ : là lúc dành cho những công việc đơn giản như lau dọn nhà cửa, tham gia các khóa học vận động như nhảy erobic , thiền, chơi thể thao ,chạy bộ , nghỉ ngơi ...",style: TextStyle(fontSize: 18)),
                            Text(" - Việc bạn ép bản thân thức khuya học bài sẽ không giúp bạn thêm được kiến thức mà còn mệt mỏi , hãy tận dụng thời gian và ngủ một giấc thật sâu để tinh thần vững vàng.",style: TextStyle(fontSize: 18)),
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