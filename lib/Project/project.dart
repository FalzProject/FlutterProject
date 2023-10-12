import 'package:flutter/material.dart';
import 'package:firebase_ui_database/firebase_ui_database.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:idc_project/Project/form_insert.dart';
import 'package:idc_project/Side/drawer.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  delete(BuildContext context, String key) {
    showDialog(
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            title: const Text('Konfirmasi Hapus'),
            content: const Text('Apakah anda yakin ingin menghapus?'),
            actions: [
              TextButton(
                  onPressed: () {
                    FirebaseDatabase.instance
                        .ref()
                        .child('project')
                        .child(key)
                        .remove();
                    Navigator.pop(context);
                  },
                  child: const Text('Ya')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Tidak')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Data Mahasiswa"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Tooltip(
            message: "Add Data",
            child: Icon(Icons.create_outlined),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FormInsertProject()));
          }),
      drawer: const DrawerPage(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: FirebaseDatabaseQueryBuilder(
            query: FirebaseDatabase.instance.ref().child('project'),
            builder: (context, snapshot, child) {
              if (snapshot.hasData) {
                int TotalData = 0;
                var data = snapshot.docs;
                List<DataRow> listwidget = [];
                for (var i = 0; i < data.length; i++) {
                  final val = data[i].value as Map<Object?, Object?>;
                  val['key'] = data[i].key;
                  TotalData++;
                  print(TotalData);
                  listwidget.add(
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text(TotalData.toString())),
                        DataCell(Text("${val['nama_mahasiswa']}")),
                        DataCell(Text("${val['keterangan']}")),
                        DataCell(Text("${val['akun_amikom']}")),
                        DataCell(Text("${val['tanggal_pembuatan']}")),
                        DataCell(Text("${val['update_terakhir']}")),
                        DataCell(Row(
                          children: [
                            Tooltip(
                                message: "Hapus Data",
                                child: IconButton(
                                    icon: const Icon(Icons.delete, color: Colors.red),
                                    onPressed: () {
                                      delete(context, val['key'].toString());
                                    }))
                          ],
                        )),
                      ],
                    ),
                  );
                }
                return DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'No',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Nama Mahasiswa',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Keterangan',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Akun AMIKOM',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Tanggal Pembuatan',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Update Terakhir',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Edit',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ],
                  rows: listwidget,
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
