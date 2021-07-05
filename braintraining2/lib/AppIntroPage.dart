

import 'package:braintraining2/model/slide.dart';
import 'package:flutter/material.dart';
import 'package:braintraining2/slidecomponent/SildeItem.dart';
import 'package:braintraining2/slidecomponent/SlideDots.dart';
import 'dart:async';

class AppIntroPage extends StatefulWidget {
  @override
  _AppIntroPageState createState() => _AppIntroPageState();
}

class _AppIntroPageState extends State<AppIntroPage> {

int _currentPage = 0;

final PageController _pageController = PageController(
  initialPage: 0
);

  @override
  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 5),(Timer timer){
      if(_currentPage < 3) {
        _currentPage ++;
      }else{
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300), 
        curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(   
        padding: const EdgeInsets.all(6),
        child: Column(
        children: <Widget>[
           Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                  onPageChanged: _onPageChanged,
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemBuilder: (ctx, i) => SlideItem(i),
                  itemCount: slideList.length,),

              Stack(
                alignment: AlignmentDirectional.topStart,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < slideList.length; i++ )
                          if (i == _currentPage)
                            SlideDots(true)
                          else
                            SlideDots(false)
                                
                      ],
                    ),
                  )
                ],
              )
              ],
            ),
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                
                

              ],
            ),
        ],
      ),
        ),
      ),     
    );
  }  
}
