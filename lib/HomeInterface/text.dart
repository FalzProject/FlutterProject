import 'package:flutter/material.dart';
import 'package:idc_project/HomeInterface/build.dart';
import 'package:idc_project/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Data Mahasiswa"),
        backgroundColor: Colors.blue,
      ),
      drawer: const DrawerPage(),
      body: Tasks(),
    );
  }
}
