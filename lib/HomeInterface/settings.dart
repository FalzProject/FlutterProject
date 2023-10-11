import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            const Text(
              'Pengaturan',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Icon(
                  Icons.person_2_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Akun',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            buildAccountRow(context, 'Ubah Password'),
            buildAccountRow(context, 'Ubah Konten'),
            buildAccountRow(context, 'Sosial Media'),
            buildAccountRow(context, 'Bahasa'),
            buildAccountRow(context, 'Privasi dan Keamanan'),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Notifikasi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            buildNotificationRow('Aktivitas Terbaru', true),
            buildNotificationRow('Deadline Tugas', true),
            buildNotificationRow('Monitoring RT', false),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: OutlinedButton(
                onPressed: () {}, 
                child: const Text('Log Out',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 2.2,
                  color: Colors.black
              ),)),
            )
          ],
        ),
      ),
    );
  }

  Row buildNotificationRow(String title, bool isActive) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey
            ),),
            Transform.scale(
              scale: 0.7, 
              child: CupertinoSwitch(
                value: isActive, 
                onChanged: (bool val) {}))
          ],);
  }

  GestureDetector buildAccountRow(BuildContext context, String title) {
    return GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(title),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Option 1'),
                          Text('Option 2'),
                          Text('Option 3'),
                        ],
                      ),
                      actions: [
                        FloatingActionButton(onPressed: () {
                          Navigator.of(context).pop();
                        }, child: const Text('Tutup'),)
                      ],
                    );
                  });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
                const Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.grey,
                )
              ],
                      ),
            ),
          );
  }
}
