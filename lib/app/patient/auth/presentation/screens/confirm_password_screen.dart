import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pharmazool/app/patient/auth/presentation/screens/tap_patient_auth_screen.dart';
import 'package:pharmazool/core/utils/app_theme_colors.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AutoSizeText(
          "تأكيد كلمة المرور",
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
                ': ' + 'تأكيد ثم ادخال كلمة مرور جديده',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 30),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  cursorColor: Colors.lightBlue,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.numbers,
                      color: Colors.black,
                    ),
                    labelText: 'يجب عليك أدخال رقم البطاقة',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: AppColors.PharmaColor),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: AppColors.PharmaColor),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  cursorColor: Colors.lightBlue,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.password_sharp,
                      color: Colors.black,
                    ),
                    labelText: 'يجب عليك كبمة المرور',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: AppColors.PharmaColor),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: AppColors.PharmaColor),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  cursorColor: Colors.lightBlue,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.password_sharp,
                      color: Colors.black,
                    ),
                    labelText: 'يجب عليك كبمة المرور الجديدة',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: AppColors.PharmaColor),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: AppColors.PharmaColor),
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
                          builder: (context) => ConfirmPasswordScreen(),
                        ),
                      );
                    },
                    child: Container(
                      color: AppColors.PharmaColor,
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 65,
                      ),
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
