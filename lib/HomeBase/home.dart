import 'package:flutter/material.dart';
import 'package:idc_project/LoginPage/login.dart';
import 'package:idc_project/HomeBase/profile.dart';
import 'package:idc_project/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: const Text("Halo Naufal Satya"),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerPage(),
    );
  }
}
