// ignore_for_file: prefer_const_constructors

import 'package:elzamalkawiya/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:elzamalkawiya/modules/container/cubit/states_na.dart';
import 'package:elzamalkawiya/modules/done_tasks/done_tasks_screen.dart';
import 'package:elzamalkawiya/modules/new_tasks/new_tasks_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  // ignore: non_constant_identifier_names
  void ChangeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  late Database database;
  List<Map> newtasks = [];
  List<Map> donetasks = [];
  List<Map> archivedtasks = [];

  void createDatabase() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('database created');
        database
            .execute(
                'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('Error When Creating Table ${error.toString()}');
        });
      },
      onOpen: (database) {
        getDataFromDatabase(database);
        print('database opened');
      },
    ).then(
      (value) {
        database = value;
        emit(AppCreateDatabaseState());
      },
    );
  }

  insertToDatabase({
    required String title,
    required String time,
    required String date,
  }) async {
    await database.transaction((txn) => txn
            .rawInsert(
                'INSERT INTO tasks (title , date, time, status)VALUES("$title", "$date", "$time","new")')
            .then((value) {
          print('$value inserted successfully');
          emit(AppInsertDatabaseState());
          getDataFromDatabase(database);
        }).catchError((error) {
          print('Error When Inserting New Record ${error.toString()}');
        }));
  }

  void getDataFromDatabase(database) {
    newtasks = [];
    donetasks = [];
    archivedtasks = [];
    database.rawQuery("SELECT * FROM tasks").then((value) {
      value.forEach((element) {
        if (element['status'] == 'new')
          newtasks.add(element);
        else if (element['status'] == 'done')
          donetasks.add(element);
        else
          archivedtasks.add(element);
      });
      emit(AppGetDatabaseState());
    });
  }

  void updateData({
    required String status,
    required int id,
  }) async {
    database.rawUpdate(
      'UPDATE tasks SET status = ? WHERE id = ?',
      [status, id],
    ).then(
      (value) => {
        getDataFromDatabase(database),
        emit(AppUpdateDatabaseState()),
      },
    );
  }

  void deleteData({
    required int id,
  }) async {
    database.rawDelete(
      'DELETE FROM tasks WHERE id = ?',
      [id],
    ).then(
      (value) => {
        getDataFromDatabase(database),
        emit(AppDeleteDatabaseState()),
      },
    );
  }

  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;

  void changeBottomSheetState({
    required bool isShow,
    required IconData icon,
  }) {
    isBottomSheetShown = isShow;
    fabIcon = icon;
    emit(AppchangeBottomSheetState());
  }
}
