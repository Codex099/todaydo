import 'package:flutter/material.dart';
import 'package:todaydo/models/task.dart';
import 'package:todaydo/widget/TaskTile.dart';

class task_list extends StatefulWidget {
  final List<Task> Tasks;
  const task_list(this.Tasks);

  @override
  State<task_list> createState() => _task_listState();
}

class _task_listState extends State<task_list> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.Tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.Tasks[index].isDone,
          tasktitle: widget.Tasks[index].name,
          Checkboxchange: (bool? newvalue) {
            setState(() {
              widget.Tasks[index].doneChange();
            });
          },
        );
      },
    );
    // ListView(
    //   children: [
    //     TaskTile(tasktitle: Tasks[0].name, isChecked: Tasks[0].isDone),
    //   ],
    // );
  }
}
