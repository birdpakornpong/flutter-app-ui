import 'package:eflutter_app/pages/confirm_order.dart';
import 'package:flutter/material.dart';

import '../model/FoodMenu.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu(name: "กุ้งเผา", price: "300", img: 'assets/images/birth.jpg'),
    FoodMenu(name: "กระเพราหมู", price: "500", img: 'assets/images/pown.jpeg'),
  ];
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ตะกร้าสินค้า'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Text('สินค้าทั้งหมด',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    FoodMenu food = menu[index];
                    return ListTile(
                      leading: SizedBox(
                        width: 120,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: Checkbox(
                                value: this.value,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                            ),
                            Image(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg")),
                          ],
                        ),
                      ),
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
                                  return const ConfirmOrder();
                                }),
                              );
                            },
                            child: const Text('ชำระเงิน'))),
                  ],
                ))
          ],
        ));
  }
}
