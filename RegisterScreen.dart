import 'package:flutter/material.dart';
import 'package:flutter_application_1a/model/RegisterScreen.dart';

class ScreenPageRegister extends StatefulWidget {
  @override
  State<ScreenPageRegister> createState() => _ScreenPageRegisterState();
}

class _ScreenPageRegisterState extends State<ScreenPageRegister> {
 RegisterScreen? registerScreen = null;
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Nama Anda',
                      labelText: 'Nama',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: jobController,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Pekerjaan Anda',
                      labelText: 'Pekerjaan',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {
                      registerScreen.connectToApi(
                              nameController.text, jobController.text)
                          .then((value) {
                        registerScreen = value;
                        setState(() {});
                      });
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(registerScreen == null
                    ? 'Tidak Ada Data'
                    : registerScreen!.id +
                        ' | ' +
                        registerScreen!.name +
                        ' | ' +
                        registerScreen!.job +
                        ' | ' +
                        registerScreen!.createdAt),
              ],
            ),
          )
        ],
      ),
    );
  }
}