import 'package:flutter/material.dart';

import '../../pages/category.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 2 / 2),
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CategoryP();
            }));
          },
          child: Column(
            children: const [
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
        ),
        Column(
          children: const [
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
          children: const [
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
          children: const [
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
          children: const [
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
          children: const [
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
    );
  }
}
