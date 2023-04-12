// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class RegisterScreen extends StatelessWidget {
//   var fNameController = TextEditingController();
//   var lNameController = TextEditingController();
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();

//   RegisterScreen({Key? key}) : super(key: key);
//   var formKey = GlobalKey<FormState>();
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
//           if (state is RegisterErrorState) {
//             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 backgroundColor: Colors.red,
//                 duration: const Duration(seconds: 3),
//                 content: CustomText(
//                   text: state.messageApi,
//                   color: Colors.white,
//                   size: 14,
//                 )));
//           } else if (state is RegisterLoadedState) {
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
//                     text: 'Sign up',
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   const SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Container(
//                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                             height: 45,
//                             decoration: const BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(60.0)),
//                               color: Color(0xff3F51B5),
//                             ),
//                             child: MaterialButton(
//                               onPressed: () {},
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset(
//                                     'assets/images/fb_icon.png',
//                                     height: 35,
//                                   ),
//                                   const CustomText(
//                                     size: 15,
//                                     text: 'Facebook',
//                                     color: Colors.white,
//                                   ),
//                                 ],
//                               ),
//                             )),
//                       ),
//                       const SizedBox(width: 12),
//                       Expanded(
//                         child: Container(
//                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                             height: 45,
//                             decoration: const BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(60.0)),
//                               color: Color(0xff2CA7E0),
//                             ),
//                             child: MaterialButton(
//                               onPressed: () {},
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset(
//                                     'assets/images/twitter.png',
//                                     height: 35,
//                                     width: 35,
//                                   ),
//                                   const CustomText(
//                                     text: 'Twitter',
//                                     color: Colors.white,
//                                   ),
//                                 ],
//                               ),
//                             )),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                   const Center(
//                       child: CustomText(
//                     size: 14,
//                     text: 'or log in with email',
//                     color: AppColors.BGreyTextColor,
//                   )),
//                   const SizedBox(height: 10),
//                   Form(
//                     key: formKey,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.only(left: 14.0),
//                           child: CustomText(
//                             text: 'FirstName',
//                             size: 12,
//                             color: AppColors.BGreyTextColor,
//                           ),
//                         ),
//                         const SizedBox(height: 5),
//                         TextFormField(
//                           controller: fNameController,
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'You must enter first name';
//                             }
//                             return null;
//                           },
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
//                               hintText: 'Enter your first name',
//                               hintStyle: const TextStyle(
//                                   color: AppColors.BGreyTextColor,
//                                   fontSize: 14)),
//                         ),
//                         const SizedBox(height: 10),
//                         const Padding(
//                           padding: EdgeInsets.only(left: 14.0),
//                           child: CustomText(
//                             text: 'LastName',
//                             size: 12,
//                             color: AppColors.BGreyTextColor,
//                           ),
//                         ),
//                         const SizedBox(height: 5),
//                         TextFormField(
//                           controller: lNameController,
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'You must enter last name';
//                             }
//                             return null;
//                           },
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
//                               hintText: 'Enter your last name',
//                               hintStyle: const TextStyle(
//                                   color: AppColors.BGreyTextColor,
//                                   fontSize: 14)),
//                         ),
//                         const SizedBox(height: 10),
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
//                           keyboardType: TextInputType.emailAddress,
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'You must enter email';
//                             }
//                             return null;
//                           },
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
//                         const SizedBox(height: 10),
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
//                           obscureText: true,
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
//                               hintText: 'Enter your password',
//                               hintStyle: const TextStyle(
//                                   color: AppColors.BGreyTextColor,
//                                   fontSize: 14)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   state is RegisterLoadingState
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
//                                 String name =
//                                     fNameController.text + lNameController.text;
//                                 cubit.register(
//                                     name: name,
//                                     email: emailController.text,
//                                     password: passwordController.text);
//                               }
//                             },
//                             child: const CustomText(
//                               text: 'Sign up',
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                   const SizedBox(height: 30),
//                   const Center(
//                     child: CustomText(
//                       text:
//                           'by signing up,you agreed with our terms of \n services and privacy policy',
//                       color: Color(0xff555555),
//                       size: 12,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const CustomText(
//                         size: 14,
//                         text: 'you have already an acount ? ',
//                         color: Color(0xff555555),
//                       ),
//                       TextButton(
//                           onPressed: () {
//                             FocusManager.instance.primaryFocus?.unfocus();
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => LoginScreen(),
//                                 ));
//                           },
//                           child: const CustomText(
//                             text: 'Log in',
//                             size: 14,
//                           ))
//                     ],
//                   ),
//                   const SizedBox(height: 25),
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
import 'package:pharmazool/core/utils/media_query_values.dart';
import 'package:pharmazool/files_doctor/home_screen.dart';

import '../../../../../core/utils/app_theme_colors.dart';
import '../../../../patient/lay_out.dart';

class doctorSignUp extends StatelessWidget {
  const doctorSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var useRController = TextEditingController();
    var passwordController = TextEditingController();
    var icensenumber = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Form(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.height * 0.05,
            ),
            TextFormField(
              controller: useRController,
              keyboardType: TextInputType.emailAddress,
              onTap: () {},
              validator: (String? value) {
                if (value!.isEmpty) {
                  return ' الرجاء ادخال الاسم';
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: AppColors.PharmaColor,
                ),
                labelText: 'اسم المستخدم',
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(5),
                // )
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            TextFormField(
              controller: useRController,
              keyboardType: TextInputType.number,
              onTap: () {},
              validator: (String? value) {
                if (value!.isEmpty) {
                  return ' رقم الصيدلية غير مسجل';
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.numbers,
                  color: AppColors.PharmaColor,
                ),
                labelText: 'رقم الرخصة',
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(5),
                // )
              ),
            ),
            //pharm name
            const SizedBox(
              height: 2,
            ),
            TextFormField(
              controller: useRController,
              keyboardType: TextInputType.text,
              onTap: () {},
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'اسم الصيدلية غير مسجل';
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.PharmaColor,
                ),
                labelText: 'اسم الصيدلية',
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(5),
                // )
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              width: context.width * 1,
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
                onTap: () {},
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'الرجاء ادخال كلمة المرور ';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outlined,
                    color: AppColors.PharmaColor,
                  ),
                  labelText: 'كلمة المرور',
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(5),
                  // )
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              width: context.width * 1,
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.phone,
                onTap: () {},
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'الرجاء ادخال رقم التليفون';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone,
                    color: AppColors.PharmaColor,
                  ),
                  labelText: 'رقم التليفون',
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(5),
                  // )
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              width: context.width * 1,
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.phone,
                onTap: () {},
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'الرجاء ادخال الموقع الجغرافي';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: AppColors.PharmaColor,
                  ),
                  labelText: 'الموقع الجغرافي',
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(5),
                  // )
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              width: context.width * 1,
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.phone,
                onTap: () {},
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'الرجاء ادخال مواعيد العمل';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.timer,
                    color: AppColors.PharmaColor,
                  ),
                  labelText: 'مواعيد العمل',
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(5),
                  // )
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.07,
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

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const HomeLayOut()));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeLayoutDoctor()));
                      // }
                    },
                    child: const AutoSizeText(
                      'اشتراك',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
