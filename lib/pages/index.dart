import 'package:flutter/material.dart';
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
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 2 / 2),
              children: const [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg"),
                      ),
                    ),
                    Text('product')
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg"),
                      ),
                    ),
                    Text('product')
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg"),
                      ),
                    ),
                    Text('product')
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg"),
                      ),
                    ),
                    Text('product')
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        radius: 40,
                      ),
                    ),
                    Text('product')
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        radius: 40,
                      ),
                    ),
                    Text('product')
                  ],
                ),
              ],
            ),

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
