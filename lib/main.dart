import 'package:bizfuel/Businesses/requstedresellers.dart';
import 'package:bizfuel/Resellers/resellerbottomNavi.dart';
import 'package:bizfuel/Resellers/resellerhomepage.dart';
import 'package:bizfuel/Resellers/resellregistration.dart';
import 'package:bizfuel/admin/adminhomepage.dart';
import 'package:bizfuel/admin/front_page.dart';
import 'package:bizfuel/admin/loginpage.dart';
import 'package:bizfuel/firebase_options.dart';
import 'package:bizfuel/login/letsgo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Letsgo(),
      home: AdminFrontPage(),
    );
  }
}
