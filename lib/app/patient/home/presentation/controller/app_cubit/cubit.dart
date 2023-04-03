import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmazool/app/patient/home/presentation/controller/app_cubit/states.dart';

import '../../screens/bottom_screens/barcode.dart';
import '../../screens/bottom_screens/history_screen.dart';
import '../../screens/bottom_screens/home_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const BarCode(),
    // const Invoice(),
  ];
  // void changeBottomNAv(
  //   int index,
  // ) {
  //   currentIndex = index;

  //   emit(changeBottomNAvState());
  // }
  void changeBottomNAv(int index, PageController? _pageController) {
    currentIndex = index;
    _pageController!.animateToPage(currentIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
    emit(changeBottomNAvState());
  }

  bool? ExpanasionTouche;
  void changeExpanasionTouche(
    bool value,
  ) {
    value != ExpanasionTouche;
    emit(changeExpanasionToucheState());
  }

  String? result;
  void changeBarCodeResult(String ScanMethodResult) {
    this.result = ScanMethodResult;
    emit(changeBarCodeResultState());
  }
}
