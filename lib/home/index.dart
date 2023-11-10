import 'package:flutter/material.dart';
import 'package:uptodo/home/calender.dart';
import 'package:uptodo/home/focus.dart';
import 'package:uptodo/home/home.dart';
import 'package:uptodo/home/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

int currentTab = 0;

final List<Widget> screens = [
  const Homepage(),
  const Calender(),
  const FocusView(),
  const Profile(),
];

final PageStorageBucket bucket = PageStorageBucket();
Widget currentScreen = const Homepage();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 207, 80, 230),
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Homepage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                            color: currentTab == 0
                                ? const Color.fromARGB(255, 207, 80, 230)
                                : Colors.white),
                        Text(
                          "Index",
                          style: TextStyle(
                              color: currentTab == 0
                                  ? const Color.fromARGB(255, 207, 80, 230)
                                  : Colors.white),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Calender();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings,
                            color: currentTab == 1
                                ? const Color.fromARGB(255, 207, 80, 230)
                                : Colors.white),
                        Text(
                          "Settings",
                          style: TextStyle(
                              color: currentTab == 1
                                  ? const Color.fromARGB(255, 207, 80, 230)
                                  : Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const FocusView();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.watch_later,
                            color: currentTab == 2
                                ? const Color.fromARGB(255, 207, 80, 230)
                                : Colors.white),
                        Text(
                          "Focus",
                          style: TextStyle(
                              color: currentTab == 2
                                  ? const Color.fromARGB(255, 207, 80, 230)
                                  : Colors.white),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                            color: currentTab == 3
                                ? const Color.fromARGB(255, 207, 80, 230)
                                : Colors.white),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: currentTab == 3
                                  ? const Color.fromARGB(255, 207, 80, 230)
                                  : Colors.white),
                        )
                      ],
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
