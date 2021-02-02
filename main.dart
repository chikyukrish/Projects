import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weeding/login.dart';
import 'package:weeding/screen/dashboard.dart';
import 'package:weeding/splash.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
