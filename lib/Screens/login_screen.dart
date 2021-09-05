import 'package:flutter/material.dart';
import 'package:logindesign/Screens/sign_up_screen.dart';
import 'package:logindesign/components/widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Padding(
      padding: const EdgeInsets.only(bottom: 25, left: 25, right: 25),
      child: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Image(
                image: AssetImage("image/chat.png"),
                fit: BoxFit.fill,
                // width: double.infinity,
                // height: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Log in to your existant account of Q Allure",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    defaultTextField(
                        icons: Icons.person,
                        hinttext: "OsamaSaleh@gmail.com",
                        obscureText: false,
                        type: TextInputType.emailAddress),
                    SizedBox(
                      height: 20,
                    ),
                    defaultTextField(
                        icons: Icons.lock_open,
                        hinttext: "Password",
                        obscureText: true,
                        type: TextInputType.number),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
              Container(
                width: 200,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  height: 60,
                  onPressed: () {},
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Or connect using",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: Color(0xFF3b5998),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('image/facebook.png'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Color(0xFFDD4B39),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("image/googlee.png"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      "Sign UP",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
