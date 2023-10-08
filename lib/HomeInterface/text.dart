import 'package:flutter/material.dart';
import 'package:idc_project/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Row(
            children: [
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.only(left: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Ganti nanti',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica'),
              ),
            ],
          )),
      drawer: const DrawerPage(),
    );
  }
}