import 'package:flutter/material.dart';
import 'package:my_app/pages/qrCodePage.dart';

class BreakdownsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breakdowns'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with actual breakdown logs count
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Breakdown Log ${index + 1}'),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QRCodeScanner(
                            title: "QR Code",
                          )),
                );
              },
              child: Text('Add Breakdown'),
            ),
          ],
        ),
      ),
    );
  }
}
