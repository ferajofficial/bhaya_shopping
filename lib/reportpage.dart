import 'package:flutter/material.dart';

class Reportpage extends StatefulWidget {
  const Reportpage({Key? key}) : super(key: key);

  @override
  State<Reportpage> createState() => ReportpageState();
}

class ReportpageState extends State<Reportpage> {
  // List<String> items = ['item1', 'item2', 'item3', 'item4', 'item5', 'item6'];
  // String? selectedItem = 'item1';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Yearly Sale'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Monthly Sale'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Daily Sale'),
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
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  //print("object");
                },
                child: const Text(
                  'Update',
                  style: TextStyle(color: Colors.black38, fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
