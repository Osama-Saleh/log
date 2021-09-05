import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logindesign/Screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.white10,
            elevation: 0,
            // backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
            )),
      ),
      home: LoginScreen(),
    );
  }
}
