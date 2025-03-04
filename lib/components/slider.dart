import 'package:flutter/cupertino.dart';

class News {
  final String name;
  final String description;
  final String imagePath;

  News(
      {required this.name, required this.description, required this.imagePath});
}

class Shop extends ChangeNotifier {
  // Product for sale
  final List<News> _shop = [
    News(
        name: "Be a Kind Heart",
        description:
            "Providing best solution on early stage detection of ctc cells",
        imagePath: 'lib/images/slide6.png'),
    News(
        name: "Non-Profit",
        description:
            "Let's play an important role to cure these type of diseases",
        imagePath: 'lib/images/slide_1.jpg'),
    News(
        name: "Humanity",
        description: "Please tell your friends about our website",
        imagePath: 'lib/images/img2.jpg'),
    News(
        name: "Humanity",
        description: "Please tell your friends about our website",
        imagePath: 'lib/images/img1.jpeg'),
  ];

  // get product list
  List<News> get shop => _shop;
}
