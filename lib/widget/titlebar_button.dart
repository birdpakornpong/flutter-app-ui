import 'package:flutter/material.dart';

class TitleBarButton extends StatelessWidget {
  TitleBarButton({super.key, required this.title, required this.onPress});
  final String title;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        TextButton(onPressed: () => onPress(), child: const Text('View All'))
      ],
    ));
  }
}
