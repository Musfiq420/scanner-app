import 'package:flutter/material.dart';
import 'package:my_app/pages/dashboard.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:my_app/services/firebase_api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  await FirebaseApi().initNotifications();
  runApp(ManufacturingDashboardApp());
}

class ManufacturingDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manufacturing Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginPage(title: "Login"),
      home: DashboardScreen(),
    );
  }
}
