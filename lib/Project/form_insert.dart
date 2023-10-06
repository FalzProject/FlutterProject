import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:idc_project/Project/project.dart';
import 'package:idc_project/drawer.dart';

class FormInsertProject extends StatefulWidget {
  const FormInsertProject({super.key});

  @override
  State<FormInsertProject> createState() => _FormInsertProjectState();
}

class _FormInsertProjectState extends State<FormInsertProject> {
  TextEditingController namaProject = TextEditingController();
  TextEditingController deskripsi = TextEditingController();
  TextEditingController linkProject = TextEditingController();

  submit() {
    Map<String, String> Project = {
      'nama_project': namaProject.text,
      'deskripsi': deskripsi.text,
      'link_project': linkProject.text,
      'tanggal_pembuatan': DateTime.now().toString(),
      'update_terakhir': DateTime.now().toString(),
    };
    FirebaseDatabase.instance
        .ref()
        .child('project')
        .push()
        .set(Project)
        .whenComplete(() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const ProjectPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Insert Project"),
      ),
      drawer: const DrawerPage(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: TextField(
              controller: namaProject,
              decoration: InputDecoration(
                  hintText: "Nama Project",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "Helvetica",
                  ),
                  border: InputBorder.none,
                  prefixIcon:
                      Icon(Icons.person_3_outlined, color: Colors.black)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: TextField(
              controller: deskripsi,
              decoration: InputDecoration(
                  hintText: "Deskripsi",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "Helvetica",
                  ),
                  border: InputBorder.none,
                  prefixIcon:
                      Icon(Icons.person_3_outlined, color: Colors.black)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: TextField(
              controller: linkProject,
              decoration: InputDecoration(
                  hintText: "Link Project",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "Helvetica",
                  ),
                  border: InputBorder.none,
                  prefixIcon:
                      Icon(Icons.person_3_outlined, color: Colors.black)),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  submit();
                },
                child: const Text("Login"),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(291, 49),
                    backgroundColor: const Color.fromRGBO(123, 169, 230, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
          )
        ],
      ),
    );
  }
}
