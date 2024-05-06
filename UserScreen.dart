import 'package:flutter/material.dart';
import 'package:flutter_application_1a/model/UserScreen.dart';

class UserScreen extends StatefulWidget {
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserScreen? userResponse = null;
  List<UserScreen> userList = [];
  @override
  void initState() {
    print('Init State');
    UserScreen.getuserList('1').then((value) {
      userList = value;
      setState(() {});
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar User',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Card(
              child: Row(
                children: [
                  Image(
                    width: 100,
                    height: 100,
                    image: NetworkImage(userList[index].avatar),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userList[index].name),
                        Text(userList[index].email),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}