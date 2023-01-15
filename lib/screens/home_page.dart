import 'package:ecommerce/constants/constants.dart';
import 'package:ecommerce/model/home_products_model.dart';
import 'package:flutter/rendering.dart';
import "package:flutter_riverpod/flutter_riverpod.dart"
    show ChangeNotifierProvider, ConsumerState, ConsumerStatefulWidget;
import 'package:ecommerce/riverpod/riverpod_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/product_card.dart';
import '../model/product2.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);
    return Scaffold(
      body: ListView(
        children: [
          champaigns(read, watch),
          space(),
          homeProductCategories(read.hotDeals),
          homeProductCategories(read.mostPopular),
        ],
      ),
    );
  }

  Widget homeProductCategories(HomeProductsModel model) {
    return usingColumn(model);
  }

  Column usingColumn(HomeProductsModel model) {
    return Column(
      children: [
        Padding(
          padding: [20, 40, 20, 15].paddingLTRB,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.productTitle,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
              // Categories title olması lazım adını ben başka mı verdim acaba
              const Text(
                'See All',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: 20.horizontalP,
            itemCount: 4,
            itemBuilder: (context, index) {
              return ProductCard(product: model.products[index]);
            },
          ),
        ),
      ],
    );
  }

  SizedBox champaigns(HomeRiverpod read, HomeRiverpod watch) {
    return SizedBox(
      height: 210,
      child: Stack(
        children: [
          champaignsPageView(read, watch),
          champaignsDot(read, watch),
        ],
      ),
    );
  }

  Align champaignsDot(HomeRiverpod read, HomeRiverpod watch) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: 15.onlyBottomP,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < read.champaigns.length; i++)
              Container(
                width: 8,
                height: 8,
                margin: 3.allP,
                decoration: BoxDecoration(
                    color: watch.capaingnsCurrentindex == i
                        ? Constants.white
                        : Constants.gray,
                    shape: BoxShape.circle),
              ),
          ],
        ),
      ),
    );
  }

  PageView champaignsPageView(HomeRiverpod read, HomeRiverpod watch) {
    return PageView.builder(
      controller: read.pageController,
      itemBuilder: (context, index) => (watch.champaigns[index]),
      itemCount: read.champaigns.length,
      onPageChanged: (newPageValue) => read.setCampaignsIndex(newPageValue),
    );
  }

  SizedBox space() => const SizedBox(
        height: 20,
      );
}
