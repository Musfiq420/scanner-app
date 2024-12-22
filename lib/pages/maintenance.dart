import 'package:flutter/material.dart';
import 'package:my_app/pages/breakdown.dart';
import 'package:my_app/pages/machines.dart';

class MaintenancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maintenance'),
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
                  MaterialPageRoute(builder: (context) => MachinesPage()),
                );
              },
              child: Text('Machines'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BreakdownsPage()),
                );
              },
              child: Text('Breakdowns'),
            ),
          ],
        ),
      ),
    );
  }
}
