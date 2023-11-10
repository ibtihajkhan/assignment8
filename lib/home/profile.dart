// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Profile",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Image(image: AssetImage("assets/photo.png")),
              SizedBox(
                height: 12,
              ),
              Text(
                "Anonymous",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text(
                          "10 Tasks Left",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text(
                          "10 Tasks Left",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                title: Text(
                  "App Settings",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Account",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                    title: Text(
                      "Change account name",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assets/key.png")),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                    title: Text(
                      "Change account password",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assets/camera.png")),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                    title: Text(
                      "Change account image",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "UpTodo",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.dashboard,
                      color: Colors.white,
                    ),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                    title: Text(
                      "About US",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.error_outline,
                      color: Colors.white,
                    ),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                    title: Text(
                      "FAQs",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.flash_on,
                      color: Colors.white,
                    ),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                    title: Text(
                      "Help and Feedback",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assets/like.png")),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                    title: Text(
                      "Support US",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assets/logout.png")),
                    title: Text(
                      "Logout",
                      style: TextStyle(fontSize: 17, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
