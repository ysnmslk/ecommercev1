import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar myAppBar() {
  return AppBar(centerTitle: true,
    title:  const Text('iDrip',
      style: TextStyle(color: Constants.black,fontWeight: FontWeight.bold),),
    leading: IconButton(
        icon: SvgPicture.asset("assets/icons/ic_drawer.svg",width: 32,height: 32,),
        onPressed: (){}   //Navigator.of(context).pop(),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            icon: SvgPicture.asset("assets/icons/ic_search.svg",width: 32,height: 32,),
            onPressed: (){}   //Navigator.of(context).pop(),
        ),
      ),
    ],
    backgroundColor: Constants.darkWhite,
  );
}
