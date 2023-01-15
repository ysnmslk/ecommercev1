import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';

import '../model/home_products_model.dart';

class HomeRiverpod extends ChangeNotifier {
  List<Image> champaigns = [
    Image.asset('assets/images/im_campaigns.png'),
    Image.asset('assets/images/im_campaigns.png'),
    Image.asset('assets/images/im_campaigns.png'),
  ];

  int capaingnsCurrentindex = 0;

  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    capaingnsCurrentindex = newPageValue;
    notifyListeners();
  }

  HomeProductsModel hotDeals =
      HomeProductsModel(productTitle: 'Hot Deals', products: [
    Product(
            title: 'Apple iMac 24 (2022)',
            image: 'assets/images/im_c1.png',//image.asset'e alınması lazım ama hata veriyor dur bakalım
            price: 1299,
            star: 4.9,
            isSaved: false,
             colors: [Colors.cyan, Colors.deepPurple, Colors.green],
            descTitle: "Get Apple TV+ free for a year",
            descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",

    ),

        Product(
            title: 'Apple Watch V1 (2021)',
            image: 'assets/images/im_w1.png',//image.asset'e alınması lazım ama hata veriyor dur bakalım
            price: 859,
            star: 4.7,
            isSaved: true,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          descTitle: "Get Apple TV+ free for a year",
          descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",

        ),

        Product(
            title: 'Apple IPhone 12 Series',
            image: 'assets/images/im_p1.png',
            price: 1199,
            star: 5.0,
            isSaved: false,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          descTitle: "Get Apple TV+ free for a year",
          descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        ),
        Product(
            title: 'Apple iMac 24 (2022)',
            image: 'assets/images/im_c1.png',//image.asset'e alınması lazım ama hata veriyor dur bakalım
            price: 1299,
            star: 4.9,
            isSaved: false,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          descTitle: "Get Apple TV+ free for a year",
          descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        ),
        Product(
            title: 'Apple Watch V1 (2021)',
            image: 'assets/images/im_w1.png',//image.asset'e alınması lazım ama hata veriyor dur bakalım
            price: 859,
            star: 4.7,
            isSaved: true,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          descTitle: "Get Apple TV+ free for a year",
          descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        ),
        Product(
            title: 'Apple IPhone 12 Series',
            image: 'assets/images/im_p1.png',
            price: 1199,
            star: 5.0,
            isSaved: false,
          colors: [Colors.cyan, Colors.deepPurple, Colors.green],
          descTitle: "Get Apple TV+ free for a year",
          descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        ),
  ]
      );

  HomeProductsModel mostPopular =
  HomeProductsModel(productTitle: 'Most Popular', products: [
    Product(
        title: 'Apple iMac 30 (2018)',
        image: 'assets/images/im_c2.png',//image.asset'e alınması lazım ama hata veriyor dur bakalım
        price: 1100,
        star: 4.9,
        isSaved: true,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
      "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
    ),

    Product(
        title: 'Apple Watch V2 (2022)',
        image: 'assets/images/im_w2.png',//image.asset'e alınması lazım ama hata veriyor dur bakalım
        price: 1000,
        star: 4.9,
        isSaved: false,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
      "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
    ),
    Product(
        title: 'Apple IPhone 13 Pro Max',
        image: 'assets/images/im_p2.png',
        price: 1499,
        star: 5.0,
        isSaved: false,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
      "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
    ),
    Product(
        title: 'Apple iMac 30 (2018)',
        image: 'assets/images/im_c2.png',//image.asset'e alınması lazım ama hata veriyor dur bakalım
        price: 1100,
        star: 4.9,
        isSaved: true,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
      "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
    ),
    Product(
        title: 'Apple Watch V2 (2022)',
        image: 'assets/images/im_w2.png',//image.asset'e alınması lazım ama hata veriyor dur bakalım
        price: 1000,
        star: 4.9,
        isSaved: false,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
      "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
    ),
    Product(
        title: 'Apple IPhone 13 Pro Max',
        image: 'assets/images/im_p2.png',
        price: 1499,
        star: 5.0,
        isSaved: false,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
      "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
    ),
  ]
  );
}
