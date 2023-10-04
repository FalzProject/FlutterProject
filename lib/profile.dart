import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Mahasiswa"),
      ),
      body: Center(
        child: Text("Gambar/Data mahasiswa"),
      ),
    );
  }
}
