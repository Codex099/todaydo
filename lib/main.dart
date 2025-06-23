import 'package:flutter/material.dart';
import 'package:todaydo/screens/tasksScreen.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tasksscreen(),debugShowCheckedModeBanner: false,);
  }
}
