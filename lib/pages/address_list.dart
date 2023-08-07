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

  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ที่อยู่'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: menu.length * 131,
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
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Radio(
                                          value: "male",
                                          groupValue: gender,
                                          onChanged: (value) {
                                            setState(() {
                                              gender = 'male';
                                            }); //selected value
                                          }),
                                    ),
                                    Text('ชื่อ - นามสกุล'),
                                  ],
                                ),
                                Text(
                                  'แก้ไข',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                            Text('เบอร์โทรศัพท์'),
                            Text('รายละเอียดที่อยู่'),
                            Text('ชื่อ - นามสกุล'),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 15),
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
                      child: const Text('เพิ่มที่อยู่')),
                )),
          ],
        ));
  }
}
