import 'package:flutter/material.dart';
import 'package:pharmazool/app/doctor/auth/model/catalog-model.dart';
import 'package:pharmazool/app/doctor/auth/model/itemWidget.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/bottom_screens/barcode.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/bottom_screens/home_screen.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  goToIndexPage(int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const History()),
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
    var _currentIndex = 1;

    return Scaffold(
      backgroundColor: Colors.white38,
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
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt), label: "Invoice"),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const HomeScreen()));
          },
        ),
        centerTitle: true,
        title: const Text(
          "History",
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context,index){
            return ItemWidget(item: CatalogModel.items[index]);
          }

      ),
    );
  }
}
