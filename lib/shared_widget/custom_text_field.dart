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
      keyboardType: type,
      controller: controller,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
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
