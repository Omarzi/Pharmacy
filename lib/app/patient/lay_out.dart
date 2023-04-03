import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/presentation/controller/app_cubit/cubit.dart';
import 'home/presentation/controller/app_cubit/states.dart';
import 'home/presentation/screens/bottom_screens/history_screen.dart';
import 'home/presentation/screens/bottom_screens/home_screen.dart';
import 'home/presentation/widget/BottomNavBarWidget.dart';
import 'home/presentation/widget/floating_botton.dart';
import '../../core/utils/app_theme_colors.dart';

class HomeLayOut extends StatefulWidget {
  const HomeLayOut({super.key});

  @override
  State<HomeLayOut> createState() => _HomeLayOutState();
}

class _HomeLayOutState extends State<HomeLayOut> {
  // int _currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: SizedBox.expand(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                // setState(() => _currentIndex = index);
                cubit.changeBottomNAv(index, _pageController);
              },
              children: const <Widget>[
                HomeScreen(),
                HistoryScreen(),
                // BarCode(),
                // Invoice(),
              ],
            ),
          ),
          floatingActionButton: FloatingBotton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          extendBody: true,
          bottomNavigationBar: BottomMainNavWidget(cubit, _pageController),
        );
      },
    );
  }
}

 

// class HomeLayOut extends StatelessWidget {



//   HomeLayOut({super.key});
//   PageController? _pageController;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) => AppCubit(),
//       child: BlocConsumer<AppCubit, AppStates>(
//           listener: (context, state) {},
//           builder: (context, state) {
//             var cubit = AppCubit.get(context);
//             return Scaffold(
//                 body: SizedBox.expand(
//                   child: PageView(
//                     controller: _pageController,
//                     onPageChanged: (index) {
//                       cubit.changeBottomNAv(index, _pageController);
//                       // setState(() => _currentIndex = index);
//                     },
//                     children: <Widget>[
//                       Container(
//                         color: Colors.blueGrey,
//                       ),
//                       Container(
//                         color: Colors.red,
//                       ),
//                       Container(
//                         color: Colors.green,
//                       ),
//                       Container(
//                         color: Colors.blue,
//                       ),
//                     ],
//                   ),
//                 ),
//                 //  cubit.screens[cubit.currentIndex],
//                 //  IndexedStack(
//                 //   index: cubit.currentIndex,
//                 //   children: cubit.screens,
//                 // ),
//                 bottomNavigationBar: BottomNavBarWidget());
//           }),
//     );
//   }
// }

// BottomNavigationBar(
//                   onTap: (index) {
//                     cubit.changeBottomNAv(index);
//                   },
//                   selectedItemColor: Colors.white,
//                   unselectedItemColor: Colors.black,
//                   showSelectedLabels: true,
//                   showUnselectedLabels: true,

//                   currentIndex: cubit.currentIndex,
//                   // fixedColor: AppColors.kGreenColor,
//                   // selectedItemColor: AppColors.kGreenColor,
//                   // unselectedItemColor: Colors.black,
//                   // showSelectedLabels: true,
//                   // showUnselectedLabels: true,
//                   backgroundColor: AppColors.kGreenColor,

//                   items: const [
//                     BottomNavigationBarItem(
//                         icon: Icon(Icons.home), label: "Home"),
//                     BottomNavigationBarItem(
//                         icon: Icon(Icons.history), label: "History"),
//                     BottomNavigationBarItem(
//                         icon: Icon(Icons.qr_code_rounded), label: "Bar Code"),
//                     BottomNavigationBarItem(
//                         icon: Icon(Icons.receipt), label: "Invoice"),
//                   ],
//                 ),
             