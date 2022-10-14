import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => DropdownState();
}

class DropdownState extends State<Dropdown> {
  List<String> items = ['item1', 'item2', 'item3', 'item4', 'item5', 'item6'];
  String? selectedItem = 'item1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width:300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: const Text("item", style: TextStyle(fontSize: 20)),
                    ))
                .toList(),
            onChanged: (item) => setState(() => selectedItem)),
      ),
    )
    );
  }
}
