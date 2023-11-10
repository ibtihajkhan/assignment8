// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uptodo/intro/routine.dart';
import 'package:uptodo/intro/welcome.dart';

class OrganizeView extends StatelessWidget {
  const OrganizeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Welcome()));
                  },
                  child: const Center(
                      child: Text(
                    "SKIP",
                    style: TextStyle(color: Colors.grey, fontSize: 19),
                  ))),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              child: const Image(image: AssetImage("assets/organize.png")),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Organize Your Tasks",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "You can organize your tasks",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RoutineView()));
                    },
                    child: const Center(
                        child: Text(
                      "BACK",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    ))),
                SizedBox(
                  height: 30,
                  width: 140,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                        backgroundColor: const Color.fromARGB(255, 207, 80, 230)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()));
                    },
                    child: const Center(
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
