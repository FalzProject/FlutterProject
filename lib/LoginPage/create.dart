import 'package:flutter/material.dart';
import 'package:idc_project/LoginPage/login.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 11, 69, 1),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            child: const Text(
              "Silahkan Isi Data Berikut",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Arial",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
              height: 49,
              width: 291,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(111, 118, 130, 1),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 1)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    hintStyle: TextStyle(
                        color: Colors.white, fontSize: 15, fontFamily: "Arial"),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 49,
              width: 291,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(111, 118, 130, 1),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 1)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Akun Email",
                    hintStyle: TextStyle(
                        color: Colors.white, fontSize: 15, fontFamily: "Arial"),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    )),
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 49,
              width: 291,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(111, 118, 130, 1),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 1)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.white, fontSize: 15, fontFamily: "Arial"),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    )),
              )),
          const SizedBox(
            height: 55,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: const Text("Buat Akun"),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(287, 45),
                    backgroundColor: const Color.fromRGBO(123, 169, 230, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
          )
        ]),
      ),
    );
  }
}
