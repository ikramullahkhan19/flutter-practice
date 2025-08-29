import 'package:flutter/foundation.dart';

class TodoListProvider with ChangeNotifier{
  final List<String> _tasks=[];
  List<String> get tasks=>_tasks;

  void addTask(String task){
    _tasks.add(task);
    notifyListeners();


  }
  String? _lastRemovedTask;
  void removeTask(String task){
    _lastRemovedTask=task;
    _tasks.remove(task);

    notifyListeners();

  }

  void undoTask(){
    if(_lastRemovedTask != null){
      _tasks.add(_lastRemovedTask!);
      _lastRemovedTask=null;
      notifyListeners();

    }


  }

}