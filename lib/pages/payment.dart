import 'package:eflutter_app/pages/address_add.dart';
import 'package:eflutter_app/pages/confirm_order.dart';
import 'package:flutter/material.dart';

import '../model/FoodMenu.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu(
        name: "ชำระเงินปลายทาง", price: "300", img: 'assets/images/birth.jpg'),
    FoodMenu(
        name: "QR พร้อมเพย์/ เลขบัญชี",
        price: "500",
        img: 'assets/images/pown.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ช่องทางการชำระ'),
        ),
        body: Column(
          children: [
            Expanded(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.add, size: 20),
                            Text(
                              food.name,
                            ),
                          ],
                        ),
                      ),
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
