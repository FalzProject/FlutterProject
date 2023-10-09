import 'package:flutter/material.dart';
import 'package:idc_project/drawer.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});
  @override
  _UpdateProfile createState() => _UpdateProfile();
}

class _UpdateProfile extends State<UpdateProfile> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Row(
            children: [
              Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.only(left: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Edit Profil',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica'),
              ),
            ],
          )),
          drawer: const DrawerPage(),
      body: Container(
        padding: const EdgeInsets.only(
          left: 15,
          top: 20,
          right: 15,
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1))
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/coolavatar.jpg", fit: BoxFit.cover),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: Colors.white),
                        color: Colors.black),
                    child: const Icon(Icons.edit, color: Colors.white),
                  )),
              const SizedBox(height: 30),
              buildTextField('Nama Lengkap', 'Orang', false),
              buildTextField('Email', '@gmail.com', false),
              buildTextField('Password', '*****', true),
              buildTextField('No telepon', '+62', false),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(179, 45),
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),)),
                    child: const Text('Batal',
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            fontFamily: 'Helvetica',
                            color: Colors.blue)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(179, 45),
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text('Simpan',
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            fontFamily: 'Helvetica',
                            color: Colors.white)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget buildTextField(
    String labeltext, String placeholder, bool isPasswordField) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
          obscureText: isPasswordField ? isObscurePassword : false,
          decoration: InputDecoration(
              suffixIcon: isPasswordField
                  ? IconButton(
                      icon: const Icon(Icons.remove_red_eye),
                      color: Colors.grey,
                      onPressed: () {
                        setState(() {
                          isObscurePassword = !isObscurePassword;
                        });
                      })
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5),
              labelText: labeltext,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Helvetica',
                  color: Colors.grey))));
}
}