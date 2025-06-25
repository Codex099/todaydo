import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text("go shoopiing"), trailing: taskCheckbox());
  }
}

class taskCheckbox extends StatefulWidget {
  const taskCheckbox({super.key});

  @override
  State<taskCheckbox> createState() => _taskCheckboxState();
}

class _taskCheckboxState extends State<taskCheckbox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],

      value: isChecked,
      onChanged: (newvalue) {
        setState(() {
          isChecked = newvalue;
        });
      },
    );
  }
}
