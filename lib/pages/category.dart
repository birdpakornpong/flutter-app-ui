import 'package:eflutter_app/pages/cart.dart';
import 'package:eflutter_app/pages/product.dart';
import 'package:flutter/material.dart';

import '../widget/product_slice.dart';
import '../widget/titlebar_button.dart';

class CategoryP extends StatefulWidget {
  const CategoryP({super.key});

  @override
  State<CategoryP> createState() => _CategoryPState();
}

class _CategoryPState extends State<CategoryP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('สินค้าพรีเมี่ยม'),
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
                    GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, childAspectRatio: 5 / 9),
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Product();
                              }));
                            },
                            child: SizedBox(
                                height: 200,
                                child:
                                    ProductSlice(city: 'bkb', country: 'th'))),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Product();
                              }));
                            },
                            child: SizedBox(
                                height: 200,
                                child:
                                    ProductSlice(city: 'bkb', country: 'th'))),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Product();
                              }));
                            },
                            child: SizedBox(
                                height: 200,
                                child:
                                    ProductSlice(city: 'bkb', country: 'th'))),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Product();
                              }));
                            },
                            child: SizedBox(
                                height: 200,
                                child:
                                    ProductSlice(city: 'bkb', country: 'th'))),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Product();
                              }));
                            },
                            child: SizedBox(
                                height: 200,
                                child:
                                    ProductSlice(city: 'bkb', country: 'th'))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
