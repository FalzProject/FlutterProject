import 'package:flutter/material.dart';
import 'package:idc_project/task.dart';
import 'package:idc_project/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Target Tugas"),
        backgroundColor: Colors.blue,
      ),
      drawer: const DrawerPage(),
      body: Tasks(),
    );
  }
}

//Tasks column edit
class Tasks extends StatelessWidget {
  Tasks({super.key});
  final tasksList = Task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tasksList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, tasksList[index])),
    );
  }

  Widget _buildAddTask() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Center(
        child: Text('+ Tugas Baru',
          style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Helvetica')),
      ),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: task.bgColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(task.iconData, color: task.iconColor, size: 35),
          const SizedBox(
            height: 30,
          ),
          Text(
            task.title!,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Helvetica'),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildTaskStatus(
                task.btnColor!, task.iconColor!, '${task.left} left'),
                const SizedBox(width: 5),
              _buildTaskStatus(
                Colors.white, task.iconColor!, '${task.done} done')
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txColor, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
          child: Text(text, style: TextStyle(color: txColor),),
    );
  }
}