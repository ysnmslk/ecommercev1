import 'dart:ui';

class Product {
  String image;
  String title;
  int price;
  double star;
  bool isSaved;
  String descTitle;
  String descDetail;
  List<Color> colors;


  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.star,
    required this.isSaved,
    required this.colors,
    required this.descTitle,
    required this.descDetail
});

}
