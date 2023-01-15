import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


import '../widgets/textofloginpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Constants.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset('assets/images/im_splash.png'),
            ),
            text1area('Welcome to iDrip AVM'),
            text1area('Login Choice'),
            Padding(
              padding: [20, 60, 20, 30].paddingLTRB,
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        signInWithGoogle();
                      },
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.orange),
                        fixedSize: MaterialStatePropertyAll(
                          Size.fromWidth(360),
                        ),
                      ),
                      child: const Text(
                        'Sign up with GOOGLE2',
                        style: TextStyle(fontSize: 21, color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<UserCredential?> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, re

    return await FirebaseAuth.instance.signInWithCredential(credential);

  }
}
