import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  TaskTile({required this.isChecked, required this.tasktitle});
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
        onChanged: null, // checkboxchange,
      ),
    );
  }
}

// (bool? newvalue) {
//         setState(() {
//           isChecked = newvalue!;
//         });
//       }
