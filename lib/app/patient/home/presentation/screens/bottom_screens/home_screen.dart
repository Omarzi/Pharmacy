import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/bottom_screens/motabra_screen.dart';

// import 'package:fluttertoast/fluttertoast.dart';
import 'package:pharmazool/core/utils/media_query_values.dart';
import 'package:pharmazool/location.dart';
import 'package:pharmazool/onboarding_screen.dart';
import 'package:pharmazool/shared_for_spoken.dart';
import 'package:pharmazool/splash_screen.dart';
import 'package:pharmazool/who_are_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../MedicineScreen.dart';
import '../../../../../../core/utils/assets_images_path.dart';
import '../../widget/search_bar.dart';

class HomeIconsModel {
  final String icon;
  final String title;
  final int id;

  HomeIconsModel({
    required this.icon,
    required this.title,
    required this.id,
  });
}

List<HomeIconsModel> HomeList = [
  HomeIconsModel(icon: painrelife, title: "مسكن الألم", id: 1),
  HomeIconsModel(icon: antibaiotic, title: 'مضاد حيوي', id: 2),
  HomeIconsModel(icon: eyecare, title: 'العناية بالعيون', id: 3),
  HomeIconsModel(icon: diabetesCare, title: 'الامراض المزمنة', id: 4),
  HomeIconsModel(icon: babyCare, title: 'عناية الطفل', id: 5),
  HomeIconsModel(icon: heartCare, title: 'رعاية القلب', id: 6),
  HomeIconsModel(icon: header, title: 'المعدات الطبية', id: 4),
  HomeIconsModel(icon: ppp, title: 'العناية بالجسم', id: 5),
  HomeIconsModel(icon: hair, title: 'العناية بالشعر', id: 6),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? scanResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AutoSizeText(
          "الرئيسية",
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
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
              leading: Icon(Icons.favorite),
              title: const Text(
                'التبرع بالأدوية',
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
                    builder: (context) => MotabraScreen(),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Container(
                  height: context.height * 0.2,
                  width: context.width * 0.9,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo_11zon_low.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              SearchBar(),
              // SearchBar(ScanWidget: ScanBarCode()),
              SizedBox(
                // height: context.height * 0.05,
              ),
              // BarCodeResult(),
              Container(
                color: Colors.white,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // crossAxisCount: 3,
                  // mainAxisSpacing: 1,
                  // crossAxisSpacing: 1,
                  // childAspectRatio: 1 / 1.7,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 110,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    int TouchIndex = HomeList[index].id;
                    return HomeGridView(HomeList[index], context, TouchIndex);
                  },
                  itemCount: HomeList.length,
                  // children: List.generate(HomeList.length,
                  //     (index) => HomeGridView(HomeList[index], context)),
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
    );
  }

// Future   ScanBarCode() async {
//   String scanResult;
// try {
//     scanResult = await FlutterBarcodeScanner.scanBarcode(
//         '#ff6666', 'Cancel', true, ScanMode.BARCODE);
//     print(
//         "456465455555554444444444444444444444444444444444444444444444444444444444555555555555555535555554$scanResult");
//   } on PlatformException {
//     scanResult = "Failed To Get Platform version.";
//     print(scanResult);
//   } on MissingPluginException {
//     scanResult =
//         "No implementation found for method scanBarcode on channel flutter_barcode_scanner";
//   }
//   // if (context.mounted != true) return;
//   if (mounted != true) return;

//   setState(() {
//     this.scanResult = scanResult;
//     // ShowToust(Text: scanResult, state: ToustStates.SUCSESS);
//     // Fluttertoast.showToast(
//     //     msg: "This is Center Short Toast",
//     //     toastLength: Toast.LENGTH_SHORT,
//     //     gravity: ToastGravity.CENTER,
//     //     timeInSecForIosWeb: 1,
//     //     backgroundColor: Colors.red,
//     //     textColor: Colors.white,
//     //     fontSize: 16.0);
//   });
//   //
// }

}

HomeGridView(
    HomeIconsModel homeIconModel, BuildContext context, int TouchIndex) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MedicineScreen(
                    TouchIndex: TouchIndex,
                    homeIconsModel: homeIconModel,
                  )));
    },
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              homeIconModel.icon,
              height: context.height * 0.1,
              width: context.height * 0.1,
            ),
            SizedBox(
              height: context.height * 0.0035,
            ),
            Container(
              child: AutoSizeText(
                homeIconModel.title,
                style: const TextStyle(
                    color: Colors.black,
                    // fontSize: context.height * 0.017,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Schyler'),
              ),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
          ],
        ),
      ),
    ),
  );
}

// class BarCodeResult extends StatefulWidget {
//   const BarCodeResult({
//     super.key,
//   });

//   @override
//   State<BarCodeResult> createState() => _BarCodeResultState();
// }

// class _BarCodeResultState extends State<BarCodeResult> {
//   @override
//   String? scanResult;
//   Widget build(BuildContext context) {
//     return Text('Result:${scanResult}');
//   }

//   Future ScanBarCode() async {
//     String scanResult;
//     try {
//       scanResult = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.BARCODE);
//       print(
//           "456465455555554444444444444444444444444444444444444444444444444444444444555555555555555535555554$scanResult");
//     } on PlatformException {
//       scanResult = "Failed To Get Platform version.";
//       print(scanResult);
//     } on MissingPluginException {
//       scanResult =
//           "No implementation found for method scanBarcode on channel flutter_barcode_scanner";
//     }
//     // if (context.mounted != true) return;
//     // if (mounted != true) return;

//     setState(() {
//       this.scanResult = scanResult;
//       // ShowToust(Text: scanResult, state: ToustStates.SUCSESS);
//       // Fluttertoast.showToast(
//       //     msg: "This is Center Short Toast",
//       //     toastLength: Toast.LENGTH_SHORT,
//       //     gravity: ToastGravity.CENTER,
//       //     timeInSecForIosWeb: 1,
//       //     backgroundColor: Colors.red,
//       //     textColor: Colors.white,
//       //     fontSize: 16.0);
//     });
//     //
//   }

// }
