import 'package:flutter/material.dart';
import 'package:todaydo/models/task.dart';
import 'package:todaydo/screens/add_tasks.dart';
import 'package:todaydo/widget/TaskList.dart';

class Tasksscreen extends StatefulWidget {
  const Tasksscreen({super.key});

  @override
  State<Tasksscreen> createState() => _TasksscreenState();
}

class _TasksscreenState extends State<Tasksscreen> {
  List<Task> Tasks = [Task(name: "1.2.3"), Task(name: "4.5.6")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder:
                (context) => SingleChildScrollView(
                  child: Container(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),child: AddTasksScreen()),
                ),
          );
        },
        backgroundColor: Colors.amber[400],

        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check, color: Colors.white, size: 40),
                SizedBox(width: 20),
                Text(
                  "ToDayDo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              '4 task ',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: task_list(Tasks),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
