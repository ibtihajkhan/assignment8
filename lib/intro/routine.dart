import 'package:flutter/material.dart';
import 'package:uptodo/intro/manage.dart';
import 'package:uptodo/intro/organize.dart';

class RoutineView extends StatelessWidget {
  const RoutineView({super.key});

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
                            builder: (context) => const OrganizeView()));
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
              child: const Image(image: AssetImage("assets/routine.png")),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Create Daily Routine",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "You can create your own routine to stay productive",
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
                              builder: (context) => const ManageView()));
                    },
                    child: const Center(
                        child: Text(
                      "BACK",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    ))),
                SizedBox(
                  height: 30,
                  width: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 207, 80, 230)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrganizeView()));
                    },
                    child: const Center(
                      child: Text(
                        "NEXT",
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
