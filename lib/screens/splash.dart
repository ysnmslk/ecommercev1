import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import 'base_scaffold.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Grock.toRemove(BaseScaffold());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.darkWhite,
      body: Center(
        child: Image.asset('assets/images/im_splash.png'),
      ),
    );
  }
}
