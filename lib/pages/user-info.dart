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
                elevation: 16, // the size of the shadow
                shadowColor: Colors.black, // shadow color
                color: Colors.white,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const ListTile(
                        minVerticalPadding: 30,
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg"),
                        ),
                        title: Text('มาลี ชอบการค้าขาย'),
                        trailing: Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Icon(Icons.more_vert),
                        ),
                      ),
                      ListTile(
                        title: Text('ประวัติการสั่งซื้อ'),
                        trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('ที่อยู่'),
                        trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('ออกจากระบบ'),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
