import 'package:ecommerce/features/login/screen/manager/google_singin.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomLoginButton extends StatelessWidget {
  Function onTabb;
  String buttontext;

   CustomLoginButton({super.key,
    required this.onTabb,
    required this.buttontext,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(height: 45,
      child: ElevatedButton(onPressed: ()=> onTabb,

        style:  const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange),
            fixedSize: MaterialStatePropertyAll(Size.fromWidth(360),),
        ),
        child: Text(buttontext,style: const TextStyle(fontSize: 21,color: Colors.black87),),
      ),
    );
  }
}




