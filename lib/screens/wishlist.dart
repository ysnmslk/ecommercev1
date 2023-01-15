import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../model/product2.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  List<UrunlerModel>? items;
  List<CategoryModel>? itemcate;

  @override
  void initState() {
    super.initState();
    fetchPostItems();
    fetchGetCatItems();
  }

  Future<void> fetchPostItems() async {
    final response =
        await Dio().get('https://api.escuelajs.co/api/v1/products');

    if (response.statusCode == 200) {
      final datas = response.data;

      if (datas is List) {
        setState(() {
          items = datas.map((e) => UrunlerModel.fromJson(e)).toList();
        });
      }
    }
  }

  Future<void> fetchGetCatItems() async {
    final getCategory =
        await Dio().get('https://api.escuelajs.co/api/v1/categories');
    if (getCategory.statusCode == 200) {
      final datacate = getCategory.data;

      if (datacate is List) {
        setState(() {
          itemcate = datacate.map((e) => CategoryModel.fromJson(e)).toList();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: items?.length ?? 0,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                width: 350,
                height: 185,
                child: Image.network(
                  itemcate?[index].image ?? '',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 225,
                ),
              ),
              Card(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: ListTile(
                    title: Text(items?[index].title ?? ''),
                    subtitle: Text(items?[index].description ?? ''),
                  )),
            ],
          );
        },
      ),
    );
  }
}
