import 'package:braintraining2/LearnScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';


class SangTao extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tư duy sáng tạo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Tư duy sáng tạo',style: TextStyle(color: Colors.black),),
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
                          Image(image: AssetImage('assets/images/sang_t.png')),
                          SizedBox(height: 35),
                          Text("Tư duy sáng tạo :",style: TextStyle(fontSize: 25)),
                            SizedBox(height: 20),
                            Text("* Nhằm tìm ra các phương án, biện pháp thích hợp để kích hoạt khả năng sáng tạo và để tăng cường khả năng tư duy của một cá nhân hay một tập thể cộng đồng làm việc chung về một vấn đề hay lĩnh vực. Ứng dụng chính của bộ môn này là giúp cá nhân hay tập thể thực hành nó tìm ra các phương án, các lời giải từ một phần đến toàn bộ cho các vấn đề nan giải.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 35),
                            Text("1.Chỉ số sáng tạo - CQ :",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500)),
                            SizedBox(height: 20),
                            Text("* Là loại chỉ số về khả năng sáng tạo của mỗi con người . “ Khả năg sáng tạo là cái lóe sáng vỗ nhẹ vào vùng não phải để bật ra những ý tưởng” - Harry Adler.",style: TextStyle(fontSize: 18)),
                            Text("* Tư duy sáng tạo có mỗi trong một con người và hoàn toàn có thể rèn luyện được.",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 35),

                            Text("2.Luyện tập tư duy sáng tạo :",style: TextStyle(fontSize: 22)),
                            SizedBox(height: 20),
                            Text("2.1. Giảm sự căng thẳng",style: TextStyle(fontSize: 20)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/stress.jpg')),
                            SizedBox(height: 20),
                            Text("Khi cơ thể chúng ta bị stress, sẽ có một loại hormones được tiết ra, gây ảnh hưởng tới những vùng mang khả năng sáng tạo trong não bộ, gây ra sự trì hoãn trong việc sáng tạo và cũng đồng thời làm giảm hiệu năng làm việc của chúng ta.Do đó hãy tránh làm những công việc đòi hỏi tính sáng tạo mỗi khi bạn bị stress ",style: TextStyle(fontSize: 18)),
                            SizedBox(height: 20),
                            Text("2.2. Tạo sự phấn khích cho bản thân",style: TextStyle(fontSize: 20)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/Happy.jpg')),
                            SizedBox(height: 20),
                            Text("* Adrenaline là một chất được tiết ra khi cơ thể chúng ta bị lâm vào trạng thái căng thẳng tột độ như khi bị lâm vào tình huống nguy hiểm hay khi chơi các trò chơi mạo hiểm. Tất nhiên như đã nói ở trên thì sự căng thẳng là không tốt cho quá trình sáng tạo nhưng bản thân chất adrenaline tiết ra khi cơ thể căng thẳng tột độ lại là thứ giúp phát triển sự sáng tạo của bản thân.",style: TextStyle(fontSize: 18)),
                            
                            Text("* Đa phần chúng ta ai cũng trải qua sự căng thẳng trong cuộc sống hằng ngày nhưng chúng ta chỉ để chúng tính tụ ở đó, việc ngồi yên làm việc trên ghế của bạn sẽ không giúp đốt cháy sự căng thằng này mà chúng chỉ có thể được giải phóng nhanh nhất thông qua các môn thể thao mang tính chất mạo hiểm",style: TextStyle(fontSize: 18)),
                            Text("* Tạo ra sự phấn khích cho bản thân thông qua những môn thể thao mang tính chất mạo hiểm cũng là một cách để giải tỏa sự căng thẳng và giúp cơ thể bạn sẵn sàng hơn cho những công việc đòi hỏi sự sáng tạo",style: TextStyle(fontSize: 18)),
                            
                            SizedBox(height: 20),
                            Text("2.3. Luôn thử những thứ mới mẻ",style: TextStyle(fontSize: 20)),
                            SizedBox(height: 20),
                            Image(image: AssetImage('assets/images/new.jpeg')),
                            SizedBox(height: 20),
                            Text("* Khám phá những điều mới mẻ trong cuộc sống cũng là cách giúp kích thích sự sáng tạo cho bản thân bên cạnh phương pháp giảm stress ở trên. Thử những hoạt động mới trong cuộc sống sẽ giúp kích thích Trí Thông Minh Mềm, là khả năng giải quyết những vấn đề mới khi mà kinh nghiệm sống và kiến thức vốn có không giúp gì được bạn",style: TextStyle(fontSize: 18)),
                            Text("* Trí Thông Minh Mềm được cải thiện đồng nghĩa với việc khả năng sáng tạo của bạn được gia tăng. Và bạn có thể rèn luyện trí thông minh mềm của bản thân bằng cách mạnh dạn thử những điều mới trong cuộc sống của mình",style: TextStyle(fontSize: 18)),
                            Text("* Bất cứ khi nào bạn học được một điều gì đó mới mẻ, tham gia một hoạt động mới, hoặc nghĩ ra một ý tưởng nào đó, não bộ của bạn sẽ tự ghi nhớ lại cách mà bản thân bạn phản ứng với những vấn đề mới mẻ. Những thứ quen thuộc, khiến bạn cảm thấy thoải mái nhưng cũng sẽ không thực sự tốt cho việc phát triển trí não của bạn.",style: TextStyle(fontSize: 18)),
                            
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