import 'package:ecommerce/constants/custom_appbar.dart';
import 'package:ecommerce/constants/custom_nav_bar.dart';
import 'package:ecommerce/riverpod/base_scaffold_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final baseScaffoldRiverpod = ChangeNotifierProvider((ref) => BaseScaffoldRiverpod());

class BaseScaffold extends ConsumerStatefulWidget {

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends ConsumerState<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      bottomNavigationBar: const MyNavigationBar(),
      body: ref.watch(baseScaffoldRiverpod).body(),

    );
  }
}
