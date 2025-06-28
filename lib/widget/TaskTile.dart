import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final void Function(bool?) Checkboxchange;
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.tasktitle,
    required this.Checkboxchange,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],

        value: isChecked,
        onChanged: Checkboxchange,
      ),
    );
  }
}
