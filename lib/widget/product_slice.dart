import 'package:flutter/material.dart';

import '../pages/product.dart';

class ProductSlice extends StatefulWidget {
  const ProductSlice({super.key, required this.city, required this.country});
  final String city;
  final String country;

  @override
  State<ProductSlice> createState() => _ProductSliceState();
}

class _ProductSliceState extends State<ProductSlice> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Product();
          }));
        },
        child: Column(
          children: [
            const SizedBox(
              width: 140,
              height: 180,
              child: Card(
                child: Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg")),
              ),
            ),
            Text(widget.city),
          ],
        ),
      ),
    );
  }
}
