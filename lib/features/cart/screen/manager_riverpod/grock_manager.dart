
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../../../../constants/constants.dart';

Widget quantityBottom({required IconData icon, required onTab}) {
  return GrockContainer(
    onTap: () => onTab(),
    width: 20,
    height: 20,
    decoration: BoxDecoration(
      borderRadius: 4.allBR,
      color: Constants.orange,
    ),
    child: Center(
      child: Icon(
        icon,
        color: Constants.black,
      ),
    ),
  );
}