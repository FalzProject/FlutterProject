import 'package:flutter/material.dart';
import 'package:idc_project/drawer.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Data Profil"),
        backgroundColor: Colors.blue,
      ),
      drawer: const DrawerPage(),
    ); 
  }
}