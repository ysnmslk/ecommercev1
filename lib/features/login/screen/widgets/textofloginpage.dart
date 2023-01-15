import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';

Padding text1area(String wellcomewords) {
  return Padding(
    padding: const EdgeInsets.only(top: 25),
    child: Center(
      child: Text(
        wellcomewords,
        style: const TextStyle(
            color: Constants.orange,
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}



