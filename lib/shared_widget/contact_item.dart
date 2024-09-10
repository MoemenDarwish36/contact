import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  String name;

  String phone;

  ContactItem({super.key, required this.phone, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      ///this variable (double.infinity) to make container
      /// take all available size
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Name : $name"), Text("Phone : $phone")],
      ),
    );
  }
}
