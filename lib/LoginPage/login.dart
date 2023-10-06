import 'package:flutter/material.dart';
import 'package:idc_project/LoginPage/create.dart';
import 'package:idc_project/HomeBase/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 11, 69, 1),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            child: const Text(
              "TEST RUN",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            child: const Text(
              "Masukkan Username dan Password \n untuk melanjutkan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: "Montserrat",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            height: 49,
            width: 291,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(111, 118, 130, 1),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.75),
                    fontSize: 15,
                    fontFamily: "Helvetica",
                  ),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 49,
            width: 291,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(111, 118, 130, 1),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.75),
                    fontSize: 15,
                    fontFamily: "Helvetica",
                  ),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  )),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: const Text("Login"),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(291, 49),
                    backgroundColor: const Color.fromRGBO(123, 169, 230, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
              child: const Text(
            "Belum Punya Akun?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: "Helvetica",
            ),
            textAlign: TextAlign.center,
          )),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CreateAccount()));
              },
              child: Container(margin:const EdgeInsets.all(5), 
              child: const Text("Daftar Disini",
              style: TextStyle(
                color: Colors.green,
                fontSize: 15,
                fontFamily: "Helvetica",
              ))), 
            ),
          )
        ]),
      ),
    );
  }
}
