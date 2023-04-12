// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class LoginScreen extends StatelessWidget {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();

//   LoginScreen({Key? key}) : super(key: key);
//   static final formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.BBGwColor,
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               FocusManager.instance.primaryFocus?.unfocus();
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             )),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: BlocConsumer<AuthCubit, AuthState>(
//         listener: (context, state) {
//           if (state is LoginErrorState) {
//             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 backgroundColor: Colors.red,
//                 duration: const Duration(seconds: 3),
//                 content: CustomText(
//                   text: state.messageApi,
//                   color: Colors.black,
//                   size: 14,
//                 )));
//           } else if (state is LoginLoadedState) {
//             FocusManager.instance.primaryFocus?.unfocus();
//             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 backgroundColor: const Color(0xff4FBE9E),
//                 duration: const Duration(seconds: 2),
//                 content: CustomText(
//                   text: state.message,
//                   color: Colors.white,
//                   size: 14,
//                 )));
//             Navigator.pushReplacement(
//                 context, MaterialPageRoute(builder: (context) => HomeLayOut()));
//           }
//         },
//         builder: (context, state) {
//           var cubit = AuthCubit.get(context);
//           return SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(13),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const CustomText(
//                     text: 'Login',
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   const SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Container(
//                               clipBehavior: Clip.antiAliasWithSaveLayer,
//                               height: 45,
//                               decoration: const BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(60.0)),
//                                 color: Color(0xff3F51B5),
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {},
//                                 child: Row(
//                                   children: [
//                                     Image.asset(
//                                       'assets/images/fb_icon.png',
//                                       height: 35,
//                                     ),
//                                     const CustomText(
//                                       text: 'Facebook',
//                                       color: Colors.white,
//                                       size: 14,
//                                     ),
//                                   ],
//                                 ),
//                               )),
//                         ),
//                         const SizedBox(width: 16),
//                         Expanded(
//                           child: Container(
//                               clipBehavior: Clip.antiAliasWithSaveLayer,
//                               height: 45,
//                               decoration: const BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(60.0)),
//                                 color: Color(0xff2CA7E0),
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {},
//                                 child: Row(
//                                   children: [
//                                     Image.asset(
//                                       'assets/images/twitter.png',
//                                       height: 35,
//                                       width: 35,
//                                     ),
//                                     const CustomText(
//                                       text: 'Twitter',
//                                       color: Colors.white,
//                                       size: 14,
//                                     ),
//                                   ],
//                                 ),
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const Center(
//                       child: CustomText(
//                     text: 'or log in with email',
//                     color: AppColors.BGreyTextColor,
//                     size: 14,
//                   )),
//                   const SizedBox(height: 20),
//                   Form(
//                     key: formKey,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.only(left: 14.0),
//                           child: CustomText(
//                             text: 'Your email',
//                             size: 12,
//                             color: AppColors.BGreyTextColor,
//                           ),
//                         ),
//                         const SizedBox(height: 5),
//                         TextFormField(
//                           controller: emailController,

//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'You must enter email';
//                             }
//                             return null;
//                           },
//                           keyboardType: TextInputType.emailAddress,
//                           style: const TextStyle(
//                             color: Colors.black,
//                           ),
//                           decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Colors.white,
//                               focusedBorder: OutlineInputBorder(
//                                   borderSide:
//                                       const BorderSide(color: Colors.white),
//                                   borderRadius: BorderRadius.circular(25)),
//                               border: OutlineInputBorder(
//                                   borderSide:
//                                       const BorderSide(color: Colors.white),
//                                   borderRadius: BorderRadius.circular(25)),
//                               enabledBorder: OutlineInputBorder(
//                                   borderSide:
//                                       const BorderSide(color: Colors.white),
//                                   borderRadius: BorderRadius.circular(25)),
//                               contentPadding: const EdgeInsets.only(left: 20),
//                               hintText: 'Enter your email',
//                               hintStyle: const TextStyle(
//                                   color: AppColors.BGreyTextColor,
//                                   fontSize: 14)),
//                         ),
//                         const SizedBox(height: 20),
//                         const Padding(
//                           padding: EdgeInsets.only(left: 14.0),
//                           child: CustomText(
//                             text: 'Your password',
//                             size: 12,
//                             color: AppColors.BGreyTextColor,
//                           ),
//                         ),
//                         const SizedBox(height: 5),
//                         TextFormField(
//                           controller: passwordController,
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'You must enter password';
//                             }
//                             return null;
//                           },
//                           style: const TextStyle(
//                             color: Colors.black,
//                           ),
//                           obscureText: true,
//                           decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Colors.white,
//                               focusedBorder: OutlineInputBorder(
//                                   borderSide:
//                                       const BorderSide(color: Colors.white),
//                                   borderRadius: BorderRadius.circular(25)),
//                               border: OutlineInputBorder(
//                                   borderSide:
//                                       const BorderSide(color: Colors.white),
//                                   borderRadius: BorderRadius.circular(25)),
//                               enabledBorder: OutlineInputBorder(
//                                   borderSide:
//                                       const BorderSide(color: Colors.white),
//                                   borderRadius: BorderRadius.circular(25)),
//                               contentPadding: const EdgeInsets.only(left: 20),
//                               hintText: 'Enter your password',
//                               hintStyle: const TextStyle(
//                                   color: AppColors.BGreyTextColor,
//                                   fontSize: 14)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const Align(
//                     alignment: Alignment.centerRight,
//                     child: CustomText(
//                       text: 'Forget Password?',
//                       color: AppColors.BGreyTextColor,
//                       size: 14,
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   state is LoginLoadingState
//                       ?  Center(child: CircularProgressIndicator(
//                         valueColor: AlwaysStoppedAnimation<Color>(
//               Colors.teal.shade400,
//             ),
//                       ))
//                       : Container(
//                           height: 45,
//                           margin: const EdgeInsets.symmetric(horizontal: 10),
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                               color: const Color(0xff4FBE9E),
//                               borderRadius: BorderRadius.circular(20)),
//                           child: MaterialButton(
//                             onPressed: () {
//                               FocusManager.instance.primaryFocus?.unfocus();
//                               if (formKey.currentState!.validate()) {
//                                 cubit.login(
//                                     email: emailController.text,
//                                     password: passwordController.text);
//                               }
//                             },
//                             child: const CustomText(
//                               text: 'Login',
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pharmazool/app/patient/auth/presentation/screens/forget_password_screem.dart';
import 'package:pharmazool/core/utils/app_theme_colors.dart';
import 'package:pharmazool/core/utils/media_query_values.dart';
import 'package:pharmazool/app/patient/lay_out.dart';

class patientSignin extends StatelessWidget {
  const patientSignin({super.key});

  @override
  Widget build(BuildContext context) {
    var namEController = TextEditingController();
    var phonEController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.height * 0.1,
            ),
            TextFormField(
              controller: namEController,
              keyboardType: TextInputType.name,
              onTap: () {},
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'الاسم غير مسجل ';
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: AppColors.PharmaColor,
                ),
                labelText: 'ادخل الاسم',
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(5),
                // )
              ),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            SizedBox(
              width: context.width * 1,
              child: TextFormField(
                controller: phonEController,
                keyboardType: TextInputType.name,
                onTap: () {},
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'رقم الهاتف غير مسجل';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.numbers,
                    color: AppColors.PharmaColor,
                  ),
                  labelText: 'ادخل رقم الهاتف',
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(5),
                  // )
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPasswordSreen(),
                      ),
                    );
                  },
                  child: Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            // Row(
            //   children: const [
            //     Expanded(
            //       child: Divider(
            //         height: 1,
            //         color: Colors.black,
            //         thickness: 1,
            //       ),
            //     ),
            //     SizedBox(width: 10),
            //     Text('من 8 صباحًا إلى 11 ليلًا'),
            //     SizedBox(width: 10),
            //     Expanded(
            //       child: Divider(
            //         height: 1,
            //         color: Colors.black,
            //         thickness: 1,
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: context.height * 0.04,
            ),
            Center(
              child: Container(
                width: context.width * 0.5,
                // height: context.height * .25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.PharmaColor,
                ),
                child: TextButton(
                  onPressed: () {
                    // if (formKey.currentState!.validate()) {
                    // LoginCubit.get(context).UserLogin(
                    //     email: emailController.text,
                    //     password: passwordController.text);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeLayOut()),
                    );
                  },
                  child: const AutoSizeText(
                    'تسجيل الدخول',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 50),
            // Card(
            //   color: Colors.white.withOpacity(.8),
            //   shape: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.transparent),
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: Container(
            //     padding: EdgeInsets.symmetric(vertical: 10),
            //     width: double.infinity,
            //     height: 100,
            //     child: Column(
            //       children: [
            //         Text(
            //           'مواعيد العمل الرسمية',
            //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //         ),
            //         SizedBox(height: 20),
            //         Text(
            //           'مواعيد العمل من 8 صباحا الي 11 مساءا',
            //           style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
