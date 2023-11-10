import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Text(
                  "Index",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Image(
                    height: 42,
                    width: 42,
                    image: AssetImage("assets/Ellipse.png"))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Image(image: AssetImage("assets/home.png")),
            SizedBox(
              height: 18,
            ),
            Text(
              "What do you want to do today?",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Tap + to add your tasks",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
