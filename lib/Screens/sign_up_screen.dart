import 'package:flutter/material.dart';
import 'package:logindesign/Screens/login_screen.dart';
import 'package:logindesign/components/widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 25, left: 25, right: 25),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Let's Get Started!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create an account to Q Allure to get all feature",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  defaultTextField(
                      icons: Icons.person,
                      obscureText: false,
                      hinttext: "Name",
                      type: TextInputType.text),
                  SizedBox(
                    height: 25,
                  ),
                  defaultTextField(
                      icons: Icons.mail,
                      obscureText: false,
                      hinttext: "Email",
                      type: TextInputType.emailAddress),
                  SizedBox(
                    height: 25,
                  ),
                  defaultTextField(
                      icons: Icons.phone,
                      obscureText: false,
                      hinttext: "Phone",
                      type: TextInputType.phone),
                  SizedBox(
                    height: 25,
                  ),
                  defaultTextField(
                      icons: Icons.lock_open,
                      obscureText: true,
                      hinttext: "Password",
                      type: TextInputType.text),
                  SizedBox(
                    height: 25,
                  ),
                  defaultTextField(
                      icons: Icons.lock_open,
                      obscureText: true,
                      hinttext: "Confirm Password",
                      type: TextInputType.text),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: defaultbutton(
                      text: "CREATE",
                      colorbutton: Colors.blue,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text("Login here"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
