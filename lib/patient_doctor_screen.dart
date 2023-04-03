import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pharmazool/app/doctor/auth/presentation/screens/tap_doctor_auth_screen.dart';
import 'package:pharmazool/app/patient/auth/presentation/screens/tap_patient_auth_screen.dart';
import 'package:pharmazool/core/utils/assets_images_path.dart';
import 'package:pharmazool/core/utils/media_query_values.dart';

import 'core/utils/app_theme_colors.dart';

class PatientDoctorScreen extends StatelessWidget {
  const PatientDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // leading: IconButton(
      //   //   icon: const Icon(Icons.arrow_back_rounded),
      //   //   onPressed: () {
      //   //     Navigator.push(context,
      //   //         MaterialPageRoute(builder: (context) => const HomeScreen()));
      //   //   },
      //   // ),
      //   centerTitle: true,
      //   title: const Text(
      //     "Home",
      //   ),
      //   backgroundColor: Colors.teal,
      // ),
      // backgroundColor: const Color(0xff3CD2CB),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: context.height * 0.40,
              width: context.width * 1,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(41),
                      bottomRight: Radius.circular(41)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo_11zon_low.png'),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: context.height * 0.01,
            ),
            Expanded(
              child: Container(
                // height: context.height * .5,
                width: context.width * 1,
                decoration: BoxDecoration(
                  color: AppColors.PharmaColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(41),
                      topRight: Radius.circular(41)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.05,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TabBarScreen_patient()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(patient,
                                    height: context.height * 0.2,
                                    width: context.height * 0.2),
                                SizedBox(
                                  height: context.height * 0.0035,
                                ),
                                const AutoSizeText(
                                  'مريض',
                                  style: TextStyle(
                                      color: Colors.white,
                                      // fontSize: context.height * 0.017,
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: 'Schyler'),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TabBarScreen_doctor()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(doctor,
                                    height: context.height * 0.2,
                                    width: context.height * 0.2),
                                SizedBox(
                                  height: context.height * 0.0035,
                                ),
                                Container(
                                  child: const AutoSizeText(
                                    'صيدلي',
                                    style: TextStyle(
                                        color: Colors.white,
                                        // fontSize: context.height * 0.017,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: 'Schyler'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const AutoSizeText(
                        'قريب من المنزل, قريب للقلب',
                        style: TextStyle(
                            color: Colors.white,
                            // fontSize: context.height * 0.017,
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Schyler'),
                      ),
                      SizedBox(
                        height: context.height * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SearchBar(ScanWidget: ScanBarCode()),
            // SizedBox(
            //   height: context.height * 0.05,
            // ),
          ],
        ),
      ),
      extendBody: true,
    );
  }
}
