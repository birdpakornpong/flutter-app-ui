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
        appBar: AppBar(title: Text("โปรไฟล์")),
        body: ListView(
          children: [
            Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: ListTile(title: Text('One-line ListTile'))),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('ออกจากระบบ'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ));
  }
}
