import 'package:flutter/material.dart';
import 'package:my_app/pages/dashboard.dart';

void main() {
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
      home: DashboardScreen(),
    );
  }
}
