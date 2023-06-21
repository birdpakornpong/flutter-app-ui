import 'package:flutter/material.dart';

import '../model/FoodMenu.dart';

class AddressAdd extends StatefulWidget {
  const AddressAdd({super.key});

  @override
  State<AddressAdd> createState() => _AddressAddState();
}

class _AddressAddState extends State<AddressAdd> {
  // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu(name: "กุ้งเผา", price: "300", img: 'assets/images/birth.jpg'),
    FoodMenu(name: "กระเพราหมู", price: "500", img: 'assets/images/pown.jpeg'),
  ];

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "USA", child: Text("USAs")),
      const DropdownMenuItem(value: "Canada", child: Text("Canada")),
      const DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
      const DropdownMenuItem(value: "England", child: Text("England")),
    ];
    return menuItems;
  }

  String selectedValue = "USA";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ที่อยู่ใหม่'),
        ),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Row(
                  children: [
                    Text(
                      'ชื่อผู้ใช้',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ชื่อ - นามสกุล',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Row(
                  children: [
                    Text(
                      'หมายเลขโทรศัพท์',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'หมายเลขโทรศัพท์',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Row(
                  children: [
                    Text(
                      'จังหวัด',
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: InputDecorator(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(8),
                  ),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                    isExpanded: true, //make true to take width of parent widget
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                    items: dropdownItems,
                    style: const TextStyle(
                        //te
                        color: Colors.grey, //Font color
                        fontSize: 20 //font size on dropdown button
                        ),
                  )),
                ),
              ),
            ]),
          ),
        ));
  }
}
