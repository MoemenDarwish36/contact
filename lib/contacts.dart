import 'package:contacts/shared_widget/Custom_button.dart';
import 'package:contacts/shared_widget/contact_item.dart';
import 'package:contacts/shared_widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  static const String routeName = "contacts";

  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  TextEditingController name = TextEditingController();

  TextEditingController phone = TextEditingController();

  /// this list to store data
  List<Widget> contact = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Contacts Screen",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextField(
                controller: name,
                hint: 'Enter your Name here',
                suffix: Icons.edit,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                controller: phone,
                hint: "Enter your phone",
                suffix: Icons.call,
                type: TextInputType.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ///this function (visibility) to make ignore
                  Visibility(
                    visible: contact.length == 3 ? false : true,
                    child: CustomButton(
                        press: add, title: "Add", backGround: Colors.blue),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Visibility(
                    visible: contact.isNotEmpty,
                    child: CustomButton(
                        press: delete, title: "Delete", backGround: Colors.red),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(children: contact)
            ],
          ),
        ),
      ),
    );
  }

  ///this function i create to add widget in list
  void add() {
    ///i make it in (set state) to make change when i add
    setState(() {
      contact.add(ContactItem(phone: phone.text, name: name.text));

      ///this function (clear) to clean text field before i add
      name.clear();
      phone.clear();
    });
  }

  void delete() {
    setState(() {
      ///this function (removeLast) to delete list
      contact.removeLast();
    });
  }

  ///this function to lock (TextEditingController)
  @override
  void dispose() {
    super.dispose();
    name.dispose();
    phone.dispose();
  }
}
