import 'package:flutter/material.dart';
import 'package:todaydo/models/task.dart';
import 'package:todaydo/widget/TaskTile.dart';

class task_list extends StatefulWidget {
  const task_list({super.key});

  @override
  State<task_list> createState() => _task_listState();
}

class _task_listState extends State<task_list> {
  List<Task> Tasks = [Task(name: "1.2.3"), Task(name: "4.5.6")];
  @override
  Widget build(BuildContext context) {
    return ListView(children: [TaskTile(tasktitle: Tasks[0].name,isChecked: Tasks[0].isDone,)]);
  }
}
