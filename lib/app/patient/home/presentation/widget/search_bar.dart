import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:pharmazool/core/utils/assets_images_path.dart';
import 'package:pharmazool/core/utils/media_query_values.dart';

import '../../../../../core/utils/app_theme_colors.dart';

class SearchBar extends StatefulWidget {
  SearchBar({
    Key? key,
    // required Future ScanWidget,
    // required this.ScanWidget,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  // final Future ScanWidget;
  String? scanResult;
  TextEditingController searchController = TextEditingController();
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        // width: context.width * 0.9,
        height: context.height * 0.1,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: context.height * 0.09,
                    child: TextField(
                      style: TextStyle(
                        fontSize: context.height * 0.015,
                      ),
                      decoration: InputDecoration(
                        hintText: 'بحث',
                        hintStyle: TextStyle(
                          color: Color(0xFF949098),
                          fontSize: context.height * 0.018,
                        ),
                        filled: true,
                        fillColor: AppColors.kGreyColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: context.height * 0.03,
                          color: Color(0xFF949098),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            // ScanWidget;
                            ScanBarCode();
                          },
                          child: Image.asset(
                            // cacheHeight: 20,
                            scan,
                            color: Colors.black,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: context.height * 0.01,
            // ),
            // if (scanResult == null)
            //   Container(
            //       width: context.width * 0.9,
            //       height: context.height * 0.1,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         color: Colors.amber,
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text('نتيجة الباركود:',
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: context.height * 0.019)),
            //           ],
            //         ),
            //       ))
            // else
            //   Container(
            //     width: context.width * 0.9,
            //     height: context.height * 0.1,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.amber,
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text('نتيجة الباركود :',
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: context.height * 0.015)),
            //           SizedBox(
            //             height: context.height * 0.01,
            //           ),
            //           Text(' ${scanResult == -1 ? '' : scanResult}',
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: context.height * 0.015)),
            //         ],
            //       ),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }

  Future ScanBarCode() async {
    String scanResult;
    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
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
