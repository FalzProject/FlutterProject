import "package:flutter/material.dart";
import "package:idc_project/HomeBase/home.dart";
import "package:idc_project/HomeBase/profile.dart";
import "package:idc_project/LoginPage/login.dart";
import "package:idc_project/Project/project.dart";

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 16,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text("Naufal Satya P"),
                accountEmail: Text("naufalsatya10@gmail.com"),
                currentAccountPicture:
                    Icon(Icons.account_circle_rounded, size: 70)),
            ListTile(
              title: const Text("Halaman Utama"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Data Mahasiswa"),
              leading: const Icon(Icons.account_box_rounded),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateProfile()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Project"),
              leading: const Icon(Icons.table_bar),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProjectPage()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Jadwal kuliah"),
              leading: const Icon(Icons.calendar_month_rounded),
            ),
            const Divider(
              height: 0.1,
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text("Log Out")),
            )
          ],
        ),
      );
  }
}