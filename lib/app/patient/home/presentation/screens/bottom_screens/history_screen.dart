import 'package:flutter/material.dart';
import 'package:pharmazool/core/utils/app_theme_colors.dart';
import 'package:pharmazool/core/utils/media_query_values.dart';
import 'package:pharmazool/app/patient/lay_out.dart';

import 'package:auto_size_text/auto_size_text.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGreyColor,
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
      //           icon: Icon(Icons.history), label: "HistoryScreen"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.qr_code_rounded), label: "Bar Code"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.receipt), label: "Invoice"),
      //     ],
      //   ),
      // ),

      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeLayOut()));
          },
        ),
        centerTitle: true,
        title: const AutoSizeText(
          "History",
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
        ),
        backgroundColor: AppColors.kGreyColor,
      ),

      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const HistoryCard();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
              // height: context.height * .03,
              );
        },
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.width * 0.8,
            height: context.height * 0.1,
            // height: context.height * .25,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  // AppColors.kTealColor,
                  AppColors.kGreyColor, Colors.white,
                ],
              ),
              borderRadius:
                  BorderRadiusDirectional.horizontal(end: Radius.circular(5)),
              // color: Colors.white,
              // color: Colors.white,
            ),
            child: Row(
              children: [
                //in Column we made  Move Color Alinear
                Column(
                  children: [
                    Container(
                      width: context.width * 0.004,
                      height: context.height * 0.04,
                      color: const Color.fromARGB(255, 87, 32, 115),
                      // height: context.height * .25,
                    ),
                    SizedBox(
                      height: context.height * 0.0032,
                    ),
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 87, 32, 115),
                      radius: context.width * 0.01,
                    ),
                    SizedBox(
                      height: context.height * 0.00682,
                    ),
                    Container(
                      width: context.width * 0.004,
                      height: context.height * 0.0397,
                      color: const Color.fromARGB(255, 87, 32, 115),
                      // height: context.height * .25,
                    ),
                  ],
                ),
                Container(
                  width: context.width * 0.25,
                  // height: context.height * 0.04,
                  // color: Colors.white,
                  child: Center(
                    child: AutoSizeText(
                      '18:05',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ),
                ),
                Container(
                  width: context.width * 0.006,
                  height: context.height * 0.1,
                  color: AppColors.kGreyColor,
                  // height: context.height * .25,
                ),
                SizedBox(
                  width: context.width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    const AutoSizeText(
                      'Dinner',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: context.height * 0.015,
                    ),
                    AutoSizeText(
                      '360 k, 35 min',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: context.width * 0.008),
              Container(
                width: context.width * 0.004,
                height: context.height * 0.04,
                color: const Color.fromARGB(255, 87, 32, 115),
                // height: context.height * .25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
