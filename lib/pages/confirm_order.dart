import 'package:eflutter_app/pages/address_list.dart';
import 'package:flutter/material.dart';

import '../model/FoodMenu.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({super.key});

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu(name: "กุ้งเผา", price: "300", img: 'assets/images/birth.jpg'),
    FoodMenu(name: "กระเพราหมู", price: "500", img: 'assets/images/pown.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('สั่งซื้อสินค้า'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ที่อยู่จัดส่ง'),
                  Icon(Icons.add, size: 20),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    FoodMenu food = menu[index];
                    return ListTile(
                      leading: const Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg")),
                      title: Text(
                        food.name,
                        style: const TextStyle(fontSize: 30),
                      ),
                      subtitle: Text('ราคา ${food.price} บาท'),
                      onTap: () {
                        print("คุณเลือกอาหารชื่อว่า =${food.name}");
                      },
                    );
                  }),
            ),
            SizedBox(
                height: 80,
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, childAspectRatio: 10 / 2),
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder()),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return const AddressList();
                                }),
                              );
                            },
                            child: const Text('ยืนยันคำสั่งซื้อ'))),
                  ],
                ))
          ],
        ));
  }
}
