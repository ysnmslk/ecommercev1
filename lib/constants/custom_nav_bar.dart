import 'package:ecommerce/riverpod/base_scaffold_riverpod.dart';
import 'package:ecommerce/screens/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants.dart';

class MyNavigationBar extends ConsumerWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(baseScaffoldRiverpod);
    var read = ref.read(baseScaffoldRiverpod);
    return SizedBox(height: 80,
      child: BottomNavigationBar(
        elevation: 45,
        items: read.items,
        currentIndex: watch.currentIndex,
        onTap: (newPageIndex) => read.setCurrentIndex(newPageIndex),
        backgroundColor: Colors.white10,
        selectedItemColor: Constants.orange,
        selectedIconTheme: const IconThemeData(
          color: Constants.orange,
        ),
      ),
    );
  }
}
