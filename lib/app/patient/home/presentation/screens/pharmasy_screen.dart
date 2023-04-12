import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmazool/core/utils/media_query_values.dart';

import '../controller/app_cubit/cubit.dart';
import '../controller/app_cubit/states.dart';
import '../../../../../core/utils/app_theme_colors.dart';
import '../widget/BottomNavBarWidget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/floating_botton.dart';
import 'map_screen.dart';

class PharmasyScreen extends StatelessWidget {
  const PharmasyScreen({Key? key}) : super(key: key);

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
                            // Container(
                            //   height: context.height * .01,
                            //   // height: 20,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                width: context.width * 0.9,
                                height: context.height * .76,
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
                                        height: context.height * .7,
                                        child: ListView.separated(
                                          physics: BouncingScrollPhysics(),
                                          itemBuilder: (BuildContext context,
                                                  int index) =>
                                              CardWidget(),
                                          itemCount: 10,
                                          separatorBuilder:
                                              (BuildContext context,
                                                      int index) =>
                                                  SizedBox(
                                            height: context.height * 0.05,
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
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingBotton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavWidget(
            cubit: cubit,
          ),
        );
      },
    );
  }
}

class CardWidget extends StatelessWidget {
  CardWidget({super.key});
  // bool ExpanasionTouche = false;
  String? phoneNumper = "+201281859862";
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MapScreen()));
          },
          child: Container(
            width: context.width * 0.8,
            // height: context.height * .25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: const Color(0xffB8F2EE),
              // color: Colors.white,
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
                          child: IconButton(
                            icon: const Icon(
                              Icons.phone_rounded,
                              size: 30,
                            ),
                            onPressed: () async {
                              if (await canLaunch('tel:$phoneNumper')) {
                                await launch('tel:$phoneNumper');
                              }
                            },
                          )),
                      SizedBox(
                        width: context.width * .025,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            AutoSizeText(
                              'صيدليه الطبيب',
                              style: TextStyle(
                                  fontSize: 29, fontWeight: FontWeight.bold),
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: AutoSizeText(
                                " الخرطوم 2 _شرق موقف شروني  جوار زين",
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
                    title: Center(
                        child: AutoSizeText(
                      'المزيد',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )),
                    // onExpansionChanged: (value) {
                    //   cubit.changeExpanasionTouche(value);
                    //   print(value);
                    // },
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: context.width * 1,
                           /* child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: context.height * 0.17,
                                  child: Slider(
                                    label: '20',
                                    // inactiveColor: Colors.green,
                                    thumbColor: Colors.green,
                                    value: 40,
                                    onChanged: (value) {},
                                    activeColor: Colors.white,
                                    max: 100,
                                    min: 0,
                                  ),
                                ),
                                // Spacer(),
                               /* Container(
                                  width: context.width * 0.24,
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 4,
                                    itemSize: context.width * .06,
                                    // itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber.shade600,
                                    ),
                                    onRatingUpdate: (rating) {
                                      // print(rating);
                                    },
                                  ),
                                ),*/
                              ],
                            ),*/
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// Future<void> GoLocation(_urlL) async {
//   if (!await launchUrl(_urlL)) {
//     throw 'Could not launch $_urlL';
//   }
// }
