import 'package:flutter/material.dart';
import 'package:idc_project/login.dart';
import 'package:idc_project/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Text("Halo Naufal S"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        elevation: 16,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Naufal Satya P"),
                accountEmail: Text("naufalsatya10@gmail.com"),
                currentAccountPicture:
                    Icon(Icons.account_circle_rounded, size: 70)),
            ListTile(
              title: new Text("Halaman Utama"),
              leading: new Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Data Mahasiswa"),
              leading: new Icon(Icons.account_box_rounded),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileData()));
              },
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Tugas & Materi"),
              leading: new Icon(Icons.book_rounded),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Jadwal kuliah"),
              leading: new Icon(Icons.calendar_month_rounded),
            ),
            Divider(
              height: 0.1,
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text("Log Out")),
            )
          ],
        ),
      ),
    );
  }
}
