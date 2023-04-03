import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmazool/app/patient/home/presentation/controller/app_cubit/cubit.dart';
import 'package:pharmazool/app/patient/home/presentation/controller/app_cubit/states.dart';
import 'package:pharmazool/core/utils/media_query_values.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/pharmasy_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utils/app_theme_colors.dart';
import '../../../../../core/utils/assets_images_path.dart';
import '../widget/BottomNavBarWidget.dart';
import '../widget/floating_botton.dart';
import 'bottom_screens/home_screen.dart';

class MedicineScreen extends StatelessWidget {
  const MedicineScreen({
    Key? key,
    required this.homeIconsModel,
    required this.TouchIndex,
  }) : super(key: key);

  final HomeIconsModel homeIconsModel;
  final int TouchIndex;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          backgroundColor: AppColors.kGreyColor,
          appBar: AppBar(
            backgroundColor: Colors.green.withOpacity(0.7),
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            // title: const Text(''),
          ),
          floatingActionButton: const FloatingBotton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: context.height * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.7),
                          borderRadius: const BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(50),
                              bottomEnd: Radius.circular(50)))),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20.0),
                    child: Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: context.height * .025,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 20, right: 20),
                              child: Container(
                                width: context.width * 0.95,
                                height: context.height * .7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    // textDirection: TextDirection.rtl,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: context.height * .64,
                                        child: ListView.separated(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemBuilder: (BuildContext context,
                                                  int index) =>
                                              Card(),
                                          itemCount: 10,
                                          separatorBuilder:
                                              (BuildContext context,
                                                      int index) =>
                                                  SizedBox(
                                            height: context.height * 0.03,
                                          ),
                                        ),
                                      ),

                                      // const Text('Barcode Result :',
                                      //     style: TextStyle(
                                      //         fontWeight: FontWeight.bold)),
                                      // SizedBox(
                                      //   height: context.height * 0.02,
                                      // ),
                                      // Text(' rge',
                                      //     style: TextStyle(
                                      //         fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Container(
                        //   color: Colors.green,
                        //   height: 50,
                        // ),
                        Positioned(
                            top: 0,
                            bottom: context.height * .64,
                            child: Image.asset(homeIconsModel.icon)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: BottomNavWidget(
            cubit: cubit,
          ),
        );
      },
    );
  }
}

class Card extends StatelessWidget {
  Card({super.key});
  // bool ExpanasionTouche = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Container(
          width: context.width * 0.8,
          // height: context.height * .25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            color: const Color(0xffB8F2EE),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: context.width * 0.21,
                        height: context.height * 0.15,
                        child: Image.asset(
                          panadol,
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          AutoSizeText(
                            'بنادول اكسترا',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: AutoSizeText(
                              'تركيبة بانادول اكسترا تسكن الألم أكثر فاعليه من الباراسيتامول العادي .. في حين انه خفيف علي المعده * عند الاستخدام وفقا للأرشادات',
                              maxLines: 3,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                    initiallyExpanded: false,
                    iconColor: AppColors.kGreenColor,
                    title: const Center(
                        child: AutoSizeText(
                      'المزيد',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    )),
                    // onExpansionChanged: (value) {
                    //   cubit.changeExpanasionTouche(value);
                    //   print(value);
                    // },
                    children: [
                      Container(
                        width: context.width * 0.3,
                        // height: context.height * .25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: Colors.white,
                        ),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PharmasyScreen()));
                            },
                            child: const AutoSizeText(
                              'بحث',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ]),
              ],
            ),
          ),
        );
      },
    );
  }
}
