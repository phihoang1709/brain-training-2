import 'package:braintraining2/model/slide.dart';
import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {

  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(padding: const EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 400,
                    height: 400,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(slideList[index].imageUrl),fit: BoxFit.contain)
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(slideList[index].title, style: TextStyle(color: Colors.blue, fontSize: 28),),
                  SizedBox(height: 20,),
                  Text(slideList[index].descriptions, textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                  
                ],
              ),
            ],
             ),),
        
      ),
    );
  }
}