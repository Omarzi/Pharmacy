import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/bottom_screens/barcode.dart';

import 'package:pharmazool/core/utils/media_query_values.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/app_cubit/cubit.dart';
import '../controller/app_cubit/states.dart';
import '../../../../../core/utils/app_theme_colors.dart';
import '../widget/BottomNavBarWidget.dart';
import 'package:latlong2/latlong.dart';

import 'package:flutter_map/flutter_map.dart';

import '../widget/floating_botton.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MapController _mapController = MapController();
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        LatLng? location = LatLng(35.68, 51.41);
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
          // floatingActionButton: FloatingBotton(),
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerDocked,
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
                    padding: const EdgeInsetsDirectional.only(top: 0.0),
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
                                height: context.height * .798,
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
                                          height: context.height * .73,
                                          child: SingleChildScrollView(
                                            physics: BouncingScrollPhysics(),
                                            child: Column(
                                              children: [
                                                CardWidget(),
                                                SizedBox(
                                                  height: context.height * 0.05,
                                                ),
                                                Container(
                                                  width: context.width * 0.8,
                                                  height: context.height * .4,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Colors.green,
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      FlutterMap(
                                                        mapController:
                                                            _mapController,
                                                        options: MapOptions(
                                                          keepAlive: true,
                                                          center: LatLng(
                                                              30.721447889603862,
                                                              31.25534637116454),
                                                          zoom: 15,
                                                          // rotation: 180.0,
                                                        ),
                                                        // nonRotatedChildren: [
                                                        //   AttributionWidget
                                                        //       .defaultWidget(
                                                        //     source:
                                                        //         'OpenStreetMap contributors',
                                                        //     onSourceTapped: null,
                                                        //   ),
                                                        // ],
                                                        children: [
                                                          TileLayer(
                                                            subdomains: const [
                                                              'a',
                                                              'b',
                                                              'c'
                                                            ],
                                                            errorImage:
                                                                const NetworkImage(
                                                                    'https://tile.openstreetmap.org/18/0/0.png'),
                                                            urlTemplate:
                                                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                                            userAgentPackageName:
                                                                'com.example.app',
                                                          ),
                                                          MarkerLayer(
                                                            markers: [
                                                              Marker(
                                                                rotate: true,
                                                                point: LatLng(
                                                                    30.721447889603862,
                                                                    31.25534637116454),
                                                                width: 45,
                                                                height: 45,
                                                                builder:
                                                                    (context) =>
                                                                        const Icon(
                                                                  Icons
                                                                      .location_on,
                                                                  size: 40,
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20.0),
                                                          child:
                                                              FloatingActionButton(
                                                            onPressed: () {
                                                              _mapController.move(
                                                                  LatLng(
                                                                      30.721447889603862,
                                                                      31.25534637116454),
                                                                  13);
                                                            },
                                                            child: const Icon(
                                                                Icons
                                                                    .gps_fixed),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: context.height * 0.02,
                                                ),
                                                Container(
                                                  width: context.width * 0.3,
                                                  // height: context.height * .25,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            27),
                                                    color: Colors.green
                                                        .withOpacity(0.7),
                                                  ),
                                                  child: TextButton(
                                                      onPressed: () {
                                                        // Navigator.push(
                                                        //     context,
                                                        //     MaterialPageRoute(
                                                        //         builder: (context) => PharmasyScreen()));
                                                      },
                                                      child: const AutoSizeText(
                                                        'done',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                ),
                                              ],
                                            ),
                                          )),

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
          // bottomNavigationBar: BottomNavWidget(
          //   cubit: cubit,
          // ),
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
          onTap: () {},
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
                                    fontSize: 13,
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
                        fontSize: 14,
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
                            child: Row(
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
                                Container(
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
                                ),
                              ],
                            ),
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
