import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel(@required this.id, @required this.name, @required this.phone);
}

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(1, 'Reema', '09233333'),
    UserModel(2, 'Reema', '09233333'),
    UserModel(3, 'Reema', '09233333'),
    UserModel(4, 'Reema', '09233333'),
    UserModel(5, 'Reema', '09233333'),
    UserModel(6, 'Reema', '09233333'),
    UserModel(7, 'Reema', '09233333'),
    UserModel(8, 'Reema', '09233333'),
    UserModel(9, 'Reema', '09233333'),
  ];

  UserScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => useritem(users[index]),
            separatorBuilder: (context, index) => Container(
                  height: 1.0,
                  width: 5.0,
                  color: Colors.grey[300],
                ),
            itemCount: users.length));
  }

  Widget useritem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.blue,
                child: Text(
                  '${user.id}',
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              width: 20.0,
            ),
            Column(
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
