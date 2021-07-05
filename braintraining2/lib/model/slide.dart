import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String descriptions;

  Slide({
  @required this.imageUrl,
  @required this.title,
  @required this.descriptions,
});
}

final slideList = [

  Slide(
    imageUrl: 'assets/images/one.png',
    title: 'Có gì mới tại phiên bản 2.0 ?',
    descriptions: '🔻 Nâng cấp và bổ sung thêm tính năng      \n 🔻 Tăng hiêụ suất và tốc độ mở ứng dụng với Flutter \n 🔻 Khắc phục lỗi tại phiên bản 1.0 '
  ),
  Slide(
    imageUrl: 'assets/images/intro1.jpg',
    title: 'Đã có trên Android và IOS',
    descriptions: 'Ứng dụng hiện tại đã có thể sử dụng trên IOS 9.0 và Android 4.5 trở lên.'
  ),
  Slide(
    imageUrl: 'assets/images/introquizgame.png',
    title: 'Cập nhật tính năng mới !',
    descriptions: 'Cập nhật tính năng trò chơi  và giải đố trắc nghiệm.'
  ),
  Slide(
    imageUrl: 'assets/images/letgo.png',
    title: 'Hãy bắt đầu !',
    descriptions: 'Bắt đầu tại : ≡'
  ),
];