import 'package:flutter/material.dart';

class Buypage extends StatefulWidget {
  const Buypage({Key? key}) : super(key: key);

  @override
  State<Buypage> createState() => BuyState();
}

class BuyState extends State<Buypage> {
  List<String> items = ['item1', 'item2', 'item3', 'item4', 'item5', 'item6'];
  String? selectedItem = 'item1';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            child: TextField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                   hintText: 'Product Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              child: DropdownButtonFormField(
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                  value: selectedItem,
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                            ),
                          ))
                      .toList(),
                  onChanged: (items) => setState(() => selectedItem)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Price / Kg'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Quantity'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onPressed: () {
                  // print("object");
                },
                child: const Text(
                  "Update",
                  style: TextStyle(color: Colors.black38, fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
