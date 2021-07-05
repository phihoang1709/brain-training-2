import 'package:flutter/material.dart';
import 'package:braintraining2/MainHomePage.dart';

import 'package:braintraining2/LearnItems/tiem_nang.dart';
import 'package:braintraining2/LearnItems/doc_hieu.dart';
import 'package:braintraining2/LearnItems/8_loai_hinh.dart';
import 'package:braintraining2/LearnItems/hoc_tap.dart';
import 'package:braintraining2/LearnItems/sang_tao.dart';
import 'package:braintraining2/LearnItems/song_khoe.dart';
import 'package:braintraining2/LearnItems/tinh_nham.dart';

class LearnScreen extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
       
        appBar: AppBar(
          
          backgroundColor: Colors.white,
          title: Text('Bài học',style: TextStyle(color: Colors.black),),
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
                                Image(image: AssetImage('assets/images/brain.jpeg'),fit: BoxFit.fill),
                                SizedBox(height: 15),
                                Text("Tiềm năng bộ não", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => TiemNang()),);
                            },
                          ),
                          SizedBox(height: 35),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/loaihinh.jpg'),fit: BoxFit.fill),
                                SizedBox(height: 15),
                                Text("8 loại hình thông minh", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoaiHinh()),);
                            },
                          ),
                          SizedBox(height: 35),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/docsach_3.jpg'),fit: BoxFit.fill,),
                                SizedBox(height: 15),
                                Text("Đọc hiểu siêu tốc", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DocHieu()),);
                            },
                          ),
                          SizedBox(height: 35),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/hoc_tap_b.png'),fit: BoxFit.fill,),
                                SizedBox(height: 15),
                                Text("Học tập thông minh", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HocTap()),);
                            },
                          ),
                          SizedBox(height: 35),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/song_khoe_.jpg'),fit: BoxFit.fill,),
                                SizedBox(height: 15),
                                Text("Rèn luyện sống khỏe", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SongKhoe()),);
                            },
                          ),
                          SizedBox(height: 35),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/tinh_nh.jpg'),fit: BoxFit.fill,),
                                SizedBox(height: 15),
                                Text("Tính nhẩm siêu tốc", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => TinhNham()),);
                            },
                          ),
                          SizedBox(height: 35),
                          FlatButton(
                            
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/sang_t_b.jpg'),fit: BoxFit.fill,),
                                SizedBox(height: 15),
                                Text("Tư duy sáng tạo", style: TextStyle(color: Colors.black,fontSize: 25),),
                                
                              ],
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SangTao()),);
                            },
                          ),
                          SizedBox(height: 40,)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      
    );
  }
}