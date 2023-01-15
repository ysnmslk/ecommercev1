import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class CustomButtom extends StatelessWidget {
  Function onTab;
   String text;

  CustomButtom({
    Key? key,
     required this.onTab,
    required this.text
 }):super(key :key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(onPressed: ()=> onTab(),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,shape: RoundedRectangleBorder(
            borderRadius: 10.allBR
          )
          ),

          child: Text(text,
          style: const TextStyle(color: Constants.white,
              fontWeight: FontWeight.bold,fontSize: 20),
          ),
      ),
    );
  }
}


///   CustomButtom({
//     key? key,
//      required this.onTab;
//     required this.text
// }):super(key :Key);