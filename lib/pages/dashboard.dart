import 'package:flutter/material.dart';
import 'package:my_app/pages/maintenance.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MaintenancePage()),
                );
              },
              child: Text('Maintenance'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Production'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Inventory'),
            ),
          ],
        ),
      ),
    );
  }
}
