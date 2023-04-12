import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/bottom_screens/barcode.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/bottom_screens/history_screen.dart';
import 'package:pharmazool/files_doctor/baby-care.dart';
import 'package:pharmazool/files_doctor/home_doctor_screen.dart';
import 'package:pharmazool/location.dart';
import 'package:pharmazool/onboarding_screen.dart';
import 'package:pharmazool/shared_for_spoken.dart';
import 'package:pharmazool/who_are_screen.dart';

class HomeLayoutDoctor extends StatefulWidget {
  const HomeLayoutDoctor({Key? key}) : super(key: key);

  @override
  State<HomeLayoutDoctor> createState() => _HomeLayoutDoctorState();
}

class _HomeLayoutDoctorState extends State<HomeLayoutDoctor> {
  List screens = [
    HomeScreenDoctor(),
    HistoryScreen(),
    BabyCare(),
  ];

  goToIndexPage(int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreenDoctor()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HistoryScreen()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BarCode()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key, // Assign the key to Scaffold.

      appBar: AppBar(
        elevation: 0,
        title: const AutoSizeText(
          "الرئيسية",
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
        ),
        leading: Container(),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Stack(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/47.jpg"),
                    radius: 50,
                  ),
                  Positioned(
                    bottom: 8.0,
                    left: 4.0,
                    child: Text(
                      "Pharmazool",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, size: 20),
              leading: Icon(Icons.person_pin),
              title: const Text(
                'من نحن ؟',
                style: TextStyle(
                  color: Colors.black,
                  // fontSize: context.height * 0.017,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Schyler',
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WhoAreScreen(),
                  ),
                );
              },
            ),
            const SizedBox(),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, size: 20),
              leading: Icon(Icons.message),
              title: const Text(
                'شاركنا باقتراحك',
                style: TextStyle(
                    color: Colors.black,
                    // fontSize: context.height * 0.017,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Schyler'),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SharedForSpoken(),
                  ),
                );
              },
            ),
            const SizedBox(),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, size: 20),
              leading: Icon(Icons.location_on),
              title: const Text(
                'موقعنا',
                style: TextStyle(
                    color: Colors.black,
                    // fontSize: context.height * 0.017,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Schyler'),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Location(),
                  ),
                );
              },
            ),
            const SizedBox(),
            ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              leading: Icon(Icons.logout),
              title: const Text(
                'تسجيل خروج',
                style: TextStyle(
                    color: Colors.black,
                    // fontSize: context.height * 0.017,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Schyler'),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnBoardingScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.teal,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            goToIndexPage(index);
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: "History"),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_rounded), label: "Bar Code"),
          ],
        ),
      ),
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(Icons.menu),
      //     onPressed: () {
      //       _key.currentState!.openDrawer();
      //     },
      //   ),
      //   centerTitle: true,
      //   title: const Text(
      //     "Home",
      //   ),
      //   backgroundColor: Colors.teal,
      // ),
      body: screens[_currentIndex],
    );
  }
}
