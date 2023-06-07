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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ตะกร้าสินค้า'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    FoodMenu food = menu[index];
                    return ListTile(
                      leading: Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg")),
                      title: Text(
                        food.name,
                        style: const TextStyle(fontSize: 30),
                      ),
                      subtitle: Text('ราคา ' + food.price + ' บาท'),
                      onTap: () {
                        print("คุณเลือกอาหารชื่อว่า =" + food.name);
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
                            onPressed: () {},
                            child: const Text('test'))),
                  ],
                ))
          ],
        ));
  }
}
