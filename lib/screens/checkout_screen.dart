import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class CheckoutScreen extends ConsumerWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
          title: const Text('Checkout',
          style: TextStyle(color: Constants.black,fontSize: 18,
          ),),
        leading: IconButton(
          onPressed: ()=> Grock.back(),
            icon: const Icon(Icons.arrow_back,color: Constants.black,size: 32,),
        ),
      ),
      body:Column(
        children: [
          Text('Ürün paketini onaylıyor musunuz? ')
        ],
      ) ,

    );
  }
}
