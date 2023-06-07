import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("โปรไฟล์")),
        body: ListView(
          children: [
            Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: const ListTile(
                    minVerticalPadding: 30,
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg"),
                    ),
                    title: Text('One-line ListTile'))),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: const ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: const ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: const ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: const ListTile(
                leading: FlutterLogo(),
                title: Text('ออกจากระบบ'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ));
  }
}
