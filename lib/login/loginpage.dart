// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uptodo/home/index.dart';
import 'package:uptodo/login/register.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 100, 18, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Username",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: username,
                decoration: const InputDecoration(
                    prefixIconColor: Colors.black,
                    suffixIconColor: Colors.black,
                    prefixIcon: Icon(Icons.mail),
                    border: UnderlineInputBorder(),
                    hintText: "Enter Your Username"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                    prefixIconColor: Colors.black,
                    suffixIconColor: Colors.black,
                    prefixIcon: Icon(Icons.lock),
                    border: UnderlineInputBorder(),
                    hintText: "Password"),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // <-- Radius
                      ),
                      backgroundColor: Color.fromARGB(255, 207, 80, 230)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  },
                  child: Text("LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 23))),
            ),
            SizedBox(
              height: 55,
            ),
            SizedBox(
              height: 35,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // <-- Radius
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Image(
                          height: 20,
                          width: 20,
                          image: NetworkImage(
                              "data:image/png;base64,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")),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Continue With Google",
                          style: TextStyle(color: Colors.black, fontSize: 23)),
                    ],
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 35,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // <-- Radius
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Image(
                          height: 20,
                          width: 20,
                          image: NetworkImage(
                              "data:image/png;base64,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")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue With Apple",
                        style: TextStyle(color: Colors.black, fontSize: 23),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterView()));
                      },
                      child: Text("Register"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
