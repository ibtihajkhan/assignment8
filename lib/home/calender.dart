import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(13, 50, 13, 50),
        child: Column(
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  leading: Image(image: AssetImage("assets/brush.png")),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                  title: Text(
                    "Change app colour",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Image(image: AssetImage("assets/text.png")),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                  title: Text(
                    "Change app typography",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Image(image: AssetImage("assets/language.png")),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                  title: Text(
                    "Change app language",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Imports",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/import.png")),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
              title: Text(
                "Import from Google calender",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
