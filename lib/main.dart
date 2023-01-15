import 'package:ecommerce/constants/constants.dart';
import 'package:ecommerce/model/product2.dart';
import 'package:ecommerce/screens/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

//Platform  Firebase App Id
//android   1:404786084802:android:e62cfe53aa9d07fb9ef45b
// ios       1:404786084802:ios:3ec9fa27091c43969ef45b

void main() async {
  runApp(const ProviderScope(child: MyApp()));

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

// Ideal time to initialize
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),

      //Splash(),
      navigatorKey: Grock.navigationKey,
      scaffoldMessengerKey: Grock.scaffoldMessengerKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.white,
      ),
    );
  }
}
