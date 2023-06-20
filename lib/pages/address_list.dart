import 'package:flutter/material.dart';

import '../model/FoodMenu.dart';

class AddressList extends StatefulWidget {
  const AddressList({super.key});

  @override
  State<AddressList> createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu(name: "กุ้งเผา", price: "300", img: 'assets/images/birth.jpg'),
    FoodMenu(name: "กระเพราหมู", price: "500", img: 'assets/images/pown.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ที่อยู่'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    FoodMenu food = menu[index];
                    return Card(
                      margin: EdgeInsets.all(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('ชื่อ - นามสกุล'),
                            Icon(Icons.add, size: 20),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
