import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:pharmazool/app/patient/home/presentation/controller/app_cubit/cubit.dart';
import 'package:pharmazool/core/utils/app_theme_colors.dart';
import 'package:pharmazool/core/utils/media_query_values.dart';

import '../../widget/BottomNavBarWidget.dart';
import '../../widget/floating_botton.dart';
import 'home_screen.dart';
import 'history_screen.dart';
// import 'invoice_screen.dart';

class BarCode extends StatefulWidget {
  const BarCode({Key? key}) : super(key: key);

  @override
  _BarCodeState createState() => _BarCodeState();
}

class _BarCodeState extends State<BarCode> {
  // goToIndexPage(int index) {
  //   if (index == 0) {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const HomeScreen()),
  //     );
  //   } else if (index == 1) {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const HistoryScreen()),
  //     );
  //   }
  // }
  String? scanResult;
  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    // var _currentIndex = 2;

    return Scaffold(
        backgroundColor: Colors.white,
        // bottomNavigationBar: Theme(
        //   data: ThemeData(
        //     canvasColor: Colors.teal,
        //   ),
        //   child: BottomNavigationBar(
        //     currentIndex: _currentIndex,
        //     onTap: (index) {
        //       setState(() {
        //         _currentIndex = index;
        //       });
        //       goToIndexPage(index);
        //     },
        //     selectedItemColor: Colors.white,
        //     unselectedItemColor: Colors.black,
        //     showSelectedLabels: true,
        //     showUnselectedLabels: true,
        //     items: const [
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.history), label: "History"),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.qr_code_rounded), label: "Bar Code"),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.receipt), label: "Invoice"),
        //     ],
        //   ),
        // ),
        appBar: AppBar(
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_rounded),
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => const HomeScreen()));
          //   },
          // ),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),

          backgroundColor: Colors.white, elevation: 0,
        ),
        floatingActionButton: FloatingBotton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavWidget(
          cubit: cubit,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: AutoSizeText(
                  'مسح الرمز الشريطى',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              const Center(
                child: AutoSizeText(
                  'امسك جهازك فوق رمز شريطي لمسحه ضوئيًا ',
                  style: TextStyle(
                      color: Colors.grey,
                      // fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              Container(
                height: context.height * 0.40,
                width: context.width * 1,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(41),
                        topLeft: Radius.circular(41),
                        topRight: Radius.circular(41),
                        bottomRight: Radius.circular(41)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/scanlogo.jpg'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: context.height * 0.09,
              ),
              // Spacer(),
              Container(
                width: context.width * 0.3,
                // height: context.height * .25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  color: AppColors.BGreyIconColor,
                ),
                child: TextButton(
                    onPressed: () {
                      ScanBarCode();
                    },
                    child: const AutoSizeText(
                      'بحث',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ));
  }

  Future ScanBarCode() async {
    String scanResult;
    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'الغاء', true, ScanMode.BARCODE);
      print(
          "456465455555554444444444444444444444444444444444444444444444444444444444555555555555555535555554$scanResult");
    } on PlatformException {
      scanResult = "فشل الحصول على إصدار النظام الأساسي.";
      print(scanResult);
    } on MissingPluginException {
      scanResult =
          "لم يتم العثور على تطبيق لأسلوب المسح الباركود على قناة flutter_barcode_scanner";
    }
    // if (context.mounted != true) return;
    if (mounted != true) return;

    setState(() {
      this.scanResult = scanResult;
      // ShowToust(Text: scanResult, state: ToustStates.SUCSESS);
      // Fluttertoast.showToast(
      //     msg: "This is Center Short Toast",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    });
    //
  }
}
