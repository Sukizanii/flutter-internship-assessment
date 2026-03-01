import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../data/sample_task.dart';
import '../widgets/task_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0,
        title: const Text("Today's Tasks", style: TextStyle(color: kTextDark)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ...sampleTasks.map((task) => TaskCard(task: task)).toList(),
          ],
        ),
      ),
    );
  }
}
