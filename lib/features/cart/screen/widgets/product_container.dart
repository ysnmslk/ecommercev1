import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../../../../constants/constants.dart';
import '../manager_riverpod/grock_manager.dart';

Container productContainer() {
  return Container(
    padding: 10.allP,
    decoration: BoxDecoration(
        color: Constants.white,
        borderRadius: 10.allBR,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
          ),
        ]),
    child: IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/im_p1.png',
            width: Grock.width * 0.33,
            height: Grock.width * 0.33,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Iphone 18 Pro Max',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const Text(
                '\$799',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text(
                    'Quantity',
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  quantityBottom(icon: Icons.remove, onTab: () {}),
                  Padding(
                    padding: 7.horizontalP,
                    child: const Text(
                      '1',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  quantityBottom(icon: Icons.add, onTab: () {}),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}