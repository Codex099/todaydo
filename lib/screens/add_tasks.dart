import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Add Task",style: TextStyle(fontSize: 30,color: Colors.indigo[400],fontWeight: FontWeight.bold),),
          TextField(autofocus: true,textAlign : TextAlign.center,),
          ElevatedButton(onPressed: null, child: Text("Add")),
        ],
      ),
    );
  }
}
