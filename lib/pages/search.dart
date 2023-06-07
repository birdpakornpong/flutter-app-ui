import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ค้นหา')),
        body: Column(
          children: [
            SizedBox(
              height: 64,
              child: Row(children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width - 48,
                    child: TextFormField()),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send))
              ]),
            )
          ],
        ));
  }
}
