import 'package:braintraining2/Games/MemoryGame/Frame.dart';
String selectedFrame = "";
int selectedIndex ;
bool selected = true;
int points = 0;

List<Frame> myCouple = new List<Frame>();
List<bool> clicked = new List<bool>();

List<bool> getClicked(){

  List<bool> _clicked = new List<bool>();
  List<Frame> mycouple = new List<Frame>();
  mycouple = getFrame();
  for(int i=0;i<mycouple.length;i++){
    _clicked[i] = false;
  }

  return _clicked;
}

List<Frame>  getFrame(){

  List<Frame> couple = new List<Frame>();

  Frame mainFrame = new Frame();
    
  mainFrame.setImageAsset("assets/icon/applelogo.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/appstore.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/bitcoin.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/chrome.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();
  
  mainFrame.setImageAsset("assets/icon/facetime.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/firefox.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/hp.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/ioslogo.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  mainFrame.setImageAsset("assets/icon/legends.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/maclogo.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  mainFrame.setImageAsset("assets/icon/microsoftedge.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/xcode.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  return couple;
    

}

List<Frame>  getQuestionFrame(){

  List<Frame> couple = new List<Frame>();

  Frame mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();


  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();
  

  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  
  mainFrame.setImageAsset("assets/icon/question.png");
  mainFrame.setSelected(false);
  couple.add(mainFrame);
  couple.add(mainFrame);
  mainFrame = new Frame();

  return couple;
}