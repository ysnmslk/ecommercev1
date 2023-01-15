import 'package:ecommerce/constants/custom_bottom.dart';
import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class ProductDetail extends ConsumerStatefulWidget {
  Product productd;
  ProductDetail({required this.productd});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends ConsumerState<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              image_resim(),
              titleArea(),
              colorArea(context),
              price(context),
              button(),
              detailAppBar(),
            ],
          ),
        ],
      ),
    );
  }

  Padding button() {
    return Padding(
        padding: [20, 20, 20, 0].paddingLTRB,
        child: CustomButtom(
          onTab: () {},
          text: 'Add to Cart',
        ));
  }

  Padding price(BuildContext context) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Total',
            style: _subtitle,
          ),
          Text('\$${widget.productd.price}',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Padding titleArea() {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Text(
        widget.productd.title,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  SafeArea detailAppBar() {
    return SafeArea(
      child: Padding(
        padding: 10.horizontalP,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 32,
                color: Colors.black,
              ),
              onPressed: () => Grock.back(),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border_rounded,
                  size: 32,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }

  Padding colorArea(BuildContext context) {
    return subTitleArea(context);
  }

  Padding subTitleArea(BuildContext context) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Colors',
            style: _subtitle,
          ),
          SizedBox(
            height: 8,
          ),
          Wrap(
            spacing: 15,
            children: [
              for (int i = 0; i < widget.productd.colors.length; i++)
                Container(
                  width: 113,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: 10.allBR,
                    color: widget.productd.colors[i],
                  ),
                )
            ],
          ),
          Padding(
            padding: [20, 20, 20, 0].paddingLTRB,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (widget.productd.descTitle),
                  style: _subtitle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  (widget.productd.descDetail),
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox image_resim() {
    return SizedBox(
      height: 381,
      width: double.maxFinite,
      child: Hero(
        tag: widget.productd.image,
        child: Image.asset(
          widget.productd.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  final TextStyle _subtitle =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.bold);
}

///AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: null,
//         leading: const Icon(Icons.arrow_back,size: 32,color: Colors.black,),
//       actions: [
//
//       ],
//
//       ),
