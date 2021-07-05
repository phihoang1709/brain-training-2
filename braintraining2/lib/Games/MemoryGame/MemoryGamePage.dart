import 'dart:async';
import 'package:braintraining2/Games/GamesHome.dart';
import 'package:braintraining2/Games/MemoryGame/Frame.dart';
import 'package:braintraining2/Games/MemoryGame/DataSource.dart';
import 'package:flutter/material.dart';

class MemoryGamePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Frame> gridViewFrame = new List<Frame>();
  List<Frame> questionFrame = new List<Frame>();

  @override
  void initState() {
    
    super.initState();
    reStart();
  }
  void reStart() {

    myCouple = getFrame();
    myCouple.shuffle();

    gridViewFrame = myCouple;
    Future.delayed(const Duration(seconds: 5), () {

      setState(() {
        print("Kết thúc");
        
        questionFrame = getQuestionFrame();
        gridViewFrame = questionFrame;
        selected = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              points != 1200 ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$points/1200",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Điểm số",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ) : Container(),

              SizedBox(
                height: 20,
              ),
              points != 1200 ? GridView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 0.0, maxCrossAxisExtent: 100.0),
                children: List.generate(gridViewFrame.length, (index) {
                  return Tile(
                    imagePathUrl: gridViewFrame[index].getImageAsset(),
                    tileIndex: index,
                    parent: this,
                  );
                }),
              ) : Container(

                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          points = 0;
                          reStart();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Text("Thử lại", style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                       Navigator.of(context).push(MaterialPageRoute (builder: (context) => GamesHome(),));
                      },
                      child: Container(
                        height: 50,
                        width: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.blue,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Text("Quay về phần trò chơi", style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}



class Tile extends StatefulWidget {
  String imagePathUrl;
  int tileIndex;
  _HomeState parent;

  Tile({this.imagePathUrl, this.tileIndex, this.parent});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState(() {
            myCouple[widget.tileIndex].setSelected(true);
          });
          if (selectedFrame != "") {
            
            if (selectedFrame == myCouple[widget.tileIndex].getImageAsset()) {
              print("add point");
              points = points + 100;
              print(selectedFrame + " thishis" + widget.imagePathUrl);

              Frame _frame = new Frame();
              print(widget.tileIndex);
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                _frame.setImageAsset("");
                myCouple[widget.tileIndex] = _frame;
                print(selectedIndex);
                myCouple[selectedIndex] = _frame;
                this.widget.parent.setState(() {});
                setState(() {
                  selected = false;
                });
                selectedFrame = "";
              });
            } else {
              print(selectedFrame +
                  " thishis " +
                  myCouple[widget.tileIndex].getImageAsset());
              print("wrong choice");
              print(widget.tileIndex);
              print(selectedIndex);
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                this.widget.parent.setState(() {
                  myCouple[widget.tileIndex].setSelected(false);
                  myCouple[selectedIndex].setSelected(false);
                });
                setState(() {
                  selected = false;
                });
              });

              selectedFrame = "";
            }
          } else {
            setState(() {
              selectedFrame = myCouple[widget.tileIndex].getImageAsset();
              selectedIndex = widget.tileIndex;
            });

            print(selectedFrame);
            print(selectedIndex);
          }
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: myCouple[widget.tileIndex].getImageAsset() != ""
            ? Image.asset(myCouple[widget.tileIndex].getSelected()
                ? myCouple[widget.tileIndex].getImageAsset()
                : widget.imagePathUrl)
            : Container(
                color: Colors.white,
                child: Image.asset("assets/icon/correct.png"),
              ),
      ),
    );
  }
}