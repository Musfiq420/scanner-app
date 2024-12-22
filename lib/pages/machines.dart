import 'package:flutter/material.dart';
import 'package:my_app/pages/addMachineForm.dart';

class MachinesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Machines'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with actual machine count
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Machine ${index + 1}'),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMachineForm()),
                );
              },
              child: Text('Add Machine'),
            ),
          ],
        ),
      ),
    );
  }
}
