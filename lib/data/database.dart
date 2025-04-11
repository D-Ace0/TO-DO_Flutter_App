import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

  List toDoList = [];

  final _myBox = Hive.box('mybox');

  // call this method when it's first time ever using this app
  void createInitialData(){
    toDoList = [
      ["Flutter Development", false],
      ["Android Hacking", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}