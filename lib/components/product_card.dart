import 'package:ecommerce/constants/constants.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/model/product2.dart';
import 'package:ecommerce/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      onTap: ()=>Grock.to(ProductDetail(productd: product)),
      width: 150,
      decoration: BoxDecoration(color: Constants.white, borderRadius: 10.allBR,
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 8,
        )
      ]),

      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.image,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      product.title,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  product.isSaved
                      ? const Icon(Icons.bookmark_border_rounded,
                      color: Constants.black)
                      : const Icon(Icons.bookmark, color: Constants.orange)
                ],
              ),
            ),
            Padding(
              padding: [10, 5].horizontalAndVerticalP,
              child: Text(
                "\$${product.price}",
                style:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: [10, 0].horizontalAndVerticalP,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.star_rate_rounded,
                      color: Constants.orange, size: 22),
                  Text(
                    "${product.star}",
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
