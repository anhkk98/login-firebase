import 'package:flutter/material.dart';
import 'package:login_firebase/signIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sdasdasdsad"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Đăng nhập thành công"),
              RaisedButton(
                  child: Text("thoát"),
                  onPressed: ()async{

                    // xóa dữ liệu tài khoản đã lưu 
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.remove('email');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  })
            ],
          ),
        )
    );
  }
}