import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_firebase/Pages/home.dart';
import 'package:login_firebase/signIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  /// lưu tài khoản khi thoát app
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  runApp(MaterialApp(

    // routes: <String,WidgetBuilder>{
    //   "/login": (BuildContext context) => new SignInPage(),
    //   "/register": (BuildContext context) => new RegisterPage(),
    //   "/home": (BuildContext context) => new NavigationDrawerScreen(),
    //   "/notification":(BuildContext context)=> new NotificationPage(),
    //   "/bmi":(BuildContext context)=> new BMIPage(),
    // },

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: email == null ?  LoginPage() : Home()

  ));
}
class MyApp extends StatelessWidget {
  final email;

  const MyApp({Key key, this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: email == null ? LoginPage(): Home(),
    );
  }
}


