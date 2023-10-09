import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:idc_project/LoginPage/login.dart';
import 'package:idc_project/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        title: 'Flutter App',
        // Application theme data, you can set the colors for the application as
        // you want
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        scrollBehavior: const MaterialScrollBehavior(). copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown,
          }
        ),
        // A widget which will be started on application startup
        home: const LoginPage());
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Hide notification bar
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.purple 
      ),
    );
  }
}