import 'package:flutter/material.dart';
import 'package:todaydo/widget/TaskTile.dart';

class task_list extends StatelessWidget {
  const task_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
      ],
    );
  }
}

