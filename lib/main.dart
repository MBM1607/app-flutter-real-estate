import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/root.dart';
import 'firebase_options.dart';
import 'theme/color.dart';

Future<void> main() async {
  await Firebase.initializeApp(
      name: 'EasyHome', options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EasyHome',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: RootApp(),
    );
  }
}
