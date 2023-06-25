import 'package:eflutter_app/pages/address_add.dart';
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
        body: ListView(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    FoodMenu food = menu[index];
                    return Card(
                      margin: const EdgeInsets.all(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
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
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder()),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const AddressAdd();
                        }),
                      );
                    },
                    child: const Text('เพิ่มที่อยู่'))),
          ],
        ));
  }
}
