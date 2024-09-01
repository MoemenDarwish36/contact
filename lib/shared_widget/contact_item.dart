import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  String name;

  String phone;

  ContactItem({super.key, required this.phone, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Name : $name"), Text("Phone : $phone")],
      ),
    );
  }
}
