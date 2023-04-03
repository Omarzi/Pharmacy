import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmazool/app/patient/home/presentation/controller/app_cubit/cubit.dart';

import '../../../../../core/utils/app_theme_colors.dart';
import '../controller/app_cubit/states.dart';
import '../../../lay_out.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// class BottomNavBarWidget extends StatefulWidget {
//   const BottomNavBarWidget({Key? key}) : super(key: key);

//   @override
//   State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
// }

// class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
//   PageController? _pageController;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }

//   @override
//   void dispose() {
//     _pageController!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AppCubit, AppStates>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         var cubit = AppCubit.get(context);
//         return BottomNavyBar(
//           // backgroundColor: Colors.teal,
//           selectedIndex: cubit.currentIndex,
//           showElevation: true, // use this to remove appBar's elevation
//           onItemSelected: (index) {
//             cubit.changeBottomNAv(index, _pageController);
//           },
//           //     (index) => setState(() {
//           //   cubit.currentIndex = index;
//           //   _pageController!.animateToPage(index,
//           //       duration: Duration(milliseconds: 300), curve: Curves.ease);
//           // }),
//           items: [
//             BottomNavyBarItem(
//               icon: Icon(Icons.apps),
//               title: Text('Home'),
//               activeColor: Colors.green.shade900,
//             ),
//             BottomNavyBarItem(
//                 icon: Icon(Icons.history_toggle_off_sharp),
//                 title: Text('History'),
//                 activeColor: Colors.amber),
//             BottomNavyBarItem(
//                 icon: Icon(Icons.qr_code_rounded),
//                 title: Text('Bar Code'),
//                 activeColor: Colors.pink),
//             BottomNavyBarItem(
//                 icon: Icon(Icons.receipt),
//                 title: Text('Invoice'),
//                 activeColor: Colors.blue),
//           ],
//         );
//       },
//     );
//   }
// }

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    required this.cubit,
  });
  final cubit;

  @override
  Widget build(BuildContext context) {
    goToIndexPage(int index) {
      if (index == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeLayOut()),
        );
      } else if (index == 1) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeLayOut()),
        );
      } else if (index == 2) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeLayOut()),
        );
      } else if (index == 3) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeLayOut()),
        );
      }
    }

    return AnimatedBottomNavigationBar(
      backgroundColor: Colors.white,
      activeIndex: cubit.currentIndex,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      gapLocation: GapLocation.center,
      activeColor: const Color(0xff3CD2CB),
      inactiveColor: Colors.black,
      // waterDropColor: const Color(0xff3CD2CB),
      // dotIndicatorColor: const Color(0xff3CD2CB),
      onTap: (index) {
        goToIndexPage(index);
      },
      // currentIndex: cubit.currentIndex,
      // items: [
      //   DotNavigationBarItem(
      //     icon: Icon(Icons.apps),
      //     selectedColor: const Color(0xff3CD2CB),
      //   ),
      //   DotNavigationBarItem(
      //     icon: Icon(Icons.history_toggle_off_sharp),
      //     selectedColor: const Color(0xff3CD2CB),
      //   ),
      //   DotNavigationBarItem(
      //     icon: Icon(Icons.qr_code_rounded),
      //     selectedColor: const Color(0xff3CD2CB),
      //   ),
      //   DotNavigationBarItem(
      //     icon: Icon(Icons.receipt),
      //     selectedColor: const Color(0xff3CD2CB),
      //   ),
      // ],
      icons: iconList,
    );

    //  DotNavigationBar(
    //   backgroundColor: Colors.white,
    //   // waterDropColor: const Color(0xff3CD2CB),
    //   dotIndicatorColor: const Color(0xff3CD2CB),
    //   onTap: (index) {
    //     goToIndexPage(index);
    //   },
    //   currentIndex: cubit.currentIndex,
    //   items: [
    //     DotNavigationBarItem(
    //       icon: Icon(Icons.apps),
    //       selectedColor: const Color(0xff3CD2CB),
    //     ),
    //     DotNavigationBarItem(
    //       icon: Icon(Icons.history_toggle_off_sharp),
    //       selectedColor: const Color(0xff3CD2CB),
    //     ),
    //     DotNavigationBarItem(
    //       icon: Icon(Icons.qr_code_rounded),
    //       selectedColor: const Color(0xff3CD2CB),
    //     ),
    //     DotNavigationBarItem(
    //       icon: Icon(Icons.receipt),
    //       selectedColor: const Color(0xff3CD2CB),
    //     ),
    //   ],
    // );
  }
}

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  // final autoSizeGroup = AutoSizeGroup();
  // var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;

  final iconList = <IconData>[
    Icons.apps,
    Icons.history_toggle_off_outlined,
    Icons.qr_code_rounded,
    Icons.receipt,
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

final iconList = <IconData>[
  Icons.apps,
  Icons.history_toggle_off_outlined,
  // Icons.qr_code_rounded,
];
Widget BottomMainNavWidget(AppCubit cubit, PageController? _pageController) {
  return AnimatedBottomNavigationBar(
    backgroundColor: Colors.white,
    activeIndex: cubit.currentIndex,
    notchSmoothness: NotchSmoothness.verySmoothEdge,
    gapLocation: GapLocation.center,
    activeColor: const Color(0xff3CD2CB),
    inactiveColor: Colors.black,
    // waterDropColor: const Color(0xff3CD2CB),
    // dotIndicatorColor: const Color(0xff3CD2CB),
    onTap: (index) {
      cubit.changeBottomNAv(index, _pageController);
    },
    // currentIndex: cubit.currentIndex,
    // items: [
    //   DotNavigationBarItem(
    //     icon: Icon(Icons.apps),
    //     selectedColor: const Color(0xff3CD2CB),
    //   ),
    //   DotNavigationBarItem(
    //     icon: Icon(Icons.history_toggle_off_sharp),
    //     selectedColor: const Color(0xff3CD2CB),
    //   ),
    //   DotNavigationBarItem(
    //     icon: Icon(Icons.qr_code_rounded),
    //     selectedColor: const Color(0xff3CD2CB),
    //   ),
    //   DotNavigationBarItem(
    //     icon: Icon(Icons.receipt),
    //     selectedColor: const Color(0xff3CD2CB),
    //   ),
    // ],
    icons: iconList,
  );
}
// BottomNavyBar(
//     selectedIndex: cubit.currentIndex,
//     onItemSelected: (index) {
//       // setState(() => _currentIndex = index);
//       // _pageController?.jumpToPage(index);
//       cubit.changeBottomNAv(index, _pageController);
//     },
//     items: <BottomNavyBarItem>[
//       BottomNavyBarItem(
//         icon: const Icon(Icons.apps),
//         title: const Text('Home'),
//         activeColor: Colors.blue,
//       ),
//       BottomNavyBarItem(
//           icon: const Icon(Icons.history_toggle_off_sharp),
//           title: const Text('History'),
//           activeColor: Colors.blue
//           // activeColor: Color.fromARGB(255, 1, 67, 31)
//           ),
//       BottomNavyBarItem(
//           icon: const Icon(Icons.qr_code_rounded),
//           title: const Text('Bar Code'),
//           activeColor: Colors.blue
//           // activeColor: Color.fromRGBO(4, 61, 100, 1)
//           ),
//       BottomNavyBarItem(
//         icon: const Icon(Icons.receipt), activeColor: Colors.blue,
//         title: const Text('Invoice'),
//         // activeColor: Color.fromARGB(255, 31, 19, 161)
//       ),
//     ],
//   );
