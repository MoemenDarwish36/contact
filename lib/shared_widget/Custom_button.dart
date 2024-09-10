import 'package:flutter/material.dart';

///if i need to create attribute like this
/// typedef onClick = Void Function() ;
class CustomButton extends StatelessWidget {
  VoidCallback press;

  String title;

  Color backGround;

  CustomButton(
      {super.key,
      required this.press,
      required this.title,
      required this.backGround});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(

          ///this function (styleFrom) to style ElevatedButton
          style: ElevatedButton.styleFrom(backgroundColor: backGround),
          onPressed: press,
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          )),
    );
  }
}
