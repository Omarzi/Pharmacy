import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pharmazool/app/patient/auth/presentation/screens/confirm_password_screen.dart';
import 'package:pharmazool/app/patient/auth/presentation/screens/sign_in_screen.dart';
import 'package:pharmazool/app/patient/auth/presentation/screens/tap_patient_auth_screen.dart';
import 'package:pharmazool/core/utils/app_theme_colors.dart';

class ForgetPasswordSreen extends StatelessWidget {
  const ForgetPasswordSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AutoSizeText(
          "ادخل الرقم",
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                ': ' + 'تأكيد رقم التليفون الخاص بك',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'يجب عليك ان تدخل الرقم الخاص بك الذي تستخدمه',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                '*********02',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  cursorColor: Colors.lightBlue,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.numbers_outlined,
                      color: Colors.black,
                    ),
                    labelText: 'يجب عليك ادخال رقم التليفون',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: AppColors.PharmaColor),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: AppColors.PharmaColor),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabBarScreen_patient(),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.grey[500]!.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 35),
                      child: const Text(
                        'رجوع',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfirmPasswordScreen(),
                        ),
                      );
                    },
                    child: Container(
                      color: AppColors.PharmaColor,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 35),
                      child: const Text(
                        'تأكيد',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
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
