import 'package:eflutter_app/pages/cart.dart';
import 'package:flutter/material.dart';

import '../widget/product_slice.dart';
import '../widget/titlebar_button.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('รายละเอียดสินค้า'),
          actions: [
            GestureDetector(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.add, size: 40),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Cart();
                  }),
                );
              },
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    const Card(
                      child: Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg")),
                    ),
                    const Text('Size S254'),
                    TitleBarButton(title: 'สินค้าใกล้เคียง', onPress: () {}),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return const ProductSlice(city: 'bkb', country: 'th');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
                height: 80,
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 5 / 2),
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder()),
                            onPressed: () {},
                            child: const Text('test'))),
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
