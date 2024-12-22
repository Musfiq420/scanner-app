import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRCodeScanner extends StatefulWidget {
  const QRCodeScanner({super.key, required this.title});
  final String title;

  @override
  State<QRCodeScanner> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<QRCodeScanner> {
  String qrResult = "You have not scanned a QR";

  _scanQRCode(BuildContext context) async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const ScannerPage()),
    );
    setState(() {
      qrResult = result ?? 'No data in QR';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(qrResult),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _scanQRCode(context),
        tooltip: 'Scan QR',
        child: const Icon(Icons.qr_code_scanner_outlined),
      ),
    );
  }
}

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  bool _isDetected = false; // Flag to handle single navigation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Scanner')),
      body: SizedBox(
        height: 400,
        child: MobileScanner(
          onDetect: (capture) {
            if (_isDetected) return; // Prevent multiple detections
            _isDetected = true; // Set flag to true
            final List<Barcode> barcodes = capture.barcodes;
            for (final barcode in barcodes) {
              Navigator.pop<String>(
                  context, barcode.rawValue ?? 'No data in QR');
              break; // Break to ensure only one barcode is processed
            }
          },
        ),
      ),
    );
  }
}
