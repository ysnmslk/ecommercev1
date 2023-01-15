import 'package:ecommerce/features/cart/screen/page/cart.dart';
import 'package:ecommerce/features/login/screen/pages/login_page.dart';
import 'package:ecommerce/screens/home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/wishlist.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/ic_bottom_home.svg'),
      label: 'Home',
    ),

    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/ic_bottom_cart.svg'),
        label: 'Cart'),

    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/ic_bottom_profile.svg'),
        label: 'Account'),

    //BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/ic_bottom_save.svg'),label: 'Wishlist'),
    //BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/ic_bottom_categories.svg'),label: 'Categories'),
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const WishlistPage();
      case 2:
        return const LoginPage();
      default:
        return const HomePage();
    }
  }
}
