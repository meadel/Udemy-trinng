import 'package:elzamalkawiya/layout/naws_app/cubit/states.dart';
import 'package:elzamalkawiya/modules/newsapp/business/business_screen.dart';
import 'package:elzamalkawiya/modules/newsapp/science/science_screen.dart';
import 'package:elzamalkawiya/modules/newsapp/settings_screen/settings_screen.dart';
import 'package:elzamalkawiya/modules/newsapp/sports/sports_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: "Business",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: "Sports",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: "Science",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: "Settings",
    ),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen(),
  ];

  void ChangeBottomNavBar(int index) {
    currentIndex = index;
    emit(NewsBottomNavState());
  }

  bool isDark = false;

  void changeAppMode() {
    isDark = !isDark;
    emit(NewchangeModeState());
  }
}
