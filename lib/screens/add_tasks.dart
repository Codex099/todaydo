import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Text(
            "Add Task",textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(autofocus: true, textAlign: TextAlign.center),
          ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[400],),// there is primary proprioté fortext button pour font color
            child: Text("Add"),
          ),
        ],
      ),
    );
  }
}
