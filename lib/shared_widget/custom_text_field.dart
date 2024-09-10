import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;

  String hint;

  IconData suffix;

  TextInputType? type;

  CustomTextField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.suffix,
      this.type = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      ///this parameter (keyboardType) to choice a kind of keyboard
      ///which i need to display
      keyboardType: type,
      controller: controller,

      ///this parameter (style) to edit input text
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,

        ///this 3 parameter (border,focusedBorder,enabledBorder) to
        ///design text field
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        hintText: hint,
        hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),

        ///to make icon  in the end
        suffixIcon: Icon(
          suffix,
          color: Colors.blue,
        ),
      ),
    );
  }
}
