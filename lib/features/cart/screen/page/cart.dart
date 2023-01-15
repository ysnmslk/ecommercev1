import 'package:ecommerce/constants/constants.dart';
import 'package:ecommerce/constants/custom_bottom.dart';
import 'package:ecommerce/screens/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import '../widgets/product_container.dart';
import '../widgets/typeoftext.dart';

class CartPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: [15, 30].horizontalAndVerticalP,
        children: [
          Container(
            padding: [24, 18].horizontalAndVerticalP,
            margin: 10.horizontalP,
            decoration: BoxDecoration(
              color: Constants.yellow,
              borderRadius: 10.allBR,
            ),
            child: const Center(
                child: Text('Deliver for Free until the end of month')),
          ),
          ListViewmethod(),
          Padding(
            padding: 75.onlyBottomP,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: style,
                ),
                Text(
                  '\1598',
                  style: style,
                )
              ],
            ),
          ),
          CustomButtom(
              onTab: () => Grock.to(const CheckoutScreen()), text: 'Checkout'),
        ],
      ),
    );
  }

  ListView ListViewmethod() {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 30,
      ),
      padding: 40.verticalP,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return productContainer();
      },
    );
  }
}
