import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  @override
  State<DashboardPage> createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Dashboard',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white)),
                  subtitle: Text('Pagi',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white)),
                  trailing: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/coolavatar.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            color: Theme.of(context).primaryColor,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(100))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Target', CupertinoIcons.paperplane, Colors.red),
                  itemDashboard('Selesai', CupertinoIcons.flag, Colors.orange),
                  itemDashboard('Capaian', CupertinoIcons.camera, Colors.yellow),
                  itemDashboard('Awards', CupertinoIcons.briefcase, Colors.green),
                  itemDashboard('Hadiah', CupertinoIcons.gift, Colors.blue),
                  itemDashboard('Future', CupertinoIcons.book, Colors.indigo),
                  itemDashboard('Koleksi', CupertinoIcons.collections, Colors.purple),
                  itemDashboard('Memory', CupertinoIcons.person, Colors.black),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
            offset: const Offset(0, 1),
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5
          )
        ]
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle
          ),
          child: Icon(iconData, color: Colors.white),
        ),
        const SizedBox(
          height: 8
        ),
        Text(title, style: Theme.of(context).textTheme.titleMedium)
      ],),
    );
}
