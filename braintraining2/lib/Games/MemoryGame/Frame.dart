  
class Frame{

  String imageAsset;
  bool selected;

  Frame({this.imageAsset, this.selected});

  void setImageAsset(String getImageAsset){
    imageAsset = getImageAsset;
  }

  String getImageAsset(){
    return imageAsset;
  }

  void setSelected(bool getSelected){
    selected = getSelected;
  }

  bool getSelected(){
    return selected;
  }
}