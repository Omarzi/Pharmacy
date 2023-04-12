import 'package:flutter/material.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/bottom_screens/home_screen.dart';
import 'package:pharmazool/files_doctor/history.dart';

class BarCode extends StatefulWidget {
  const BarCode({Key? key}) : super(key: key);

  @override
  _BarCodeState createState() => _BarCodeState();
}

class _BarCodeState extends State<BarCode> {
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
    var _currentIndex = 2;
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
          "QR CODE",
        ),
        backgroundColor: Colors.teal,
      ),

      body: Container(
          child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                  children:<Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      // Image.network(src)
                      child: Image.asset('assets/images/qr.png'),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      // Image.network(src)
                      child: OutlineButton(
                        child: Text("Scano QR Code", style: TextStyle(fontSize: 20.0),),
                        highlightedBorderColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {

                        },
                      ),

                    ),
                  ])
          ),

      )
    );

  }
  
  OutlineButton({required Text child, required MaterialColor highlightedBorderColor, required RoundedRectangleBorder shape, required Null Function() onPressed}) {}
}
