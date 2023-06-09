import 'package:flutter/material.dart';
import '../widget/index/category-list.dart';
import '../widget/product_slice.dart';
import '../widget/titlebar_button.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Iffy')),
        body: ListView(
          children: [
            const CategoryList(),

            TitleBarButton(title: 'สินค้าเข้าใหม่', onPress: () {}),
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

            TitleBarButton(title: 'popular city', onPress: () {}),
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

            // TitleBarButton(title: 'popular city', onPress: () {}),
            // const ProductSlice(city: 'bkb', country: 'th'),
          ],
        ));
  }
}
