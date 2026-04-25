import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQRCode extends StatefulWidget {
  const ScanQRCode({super.key});

  @override
  State<ScanQRCode> createState() => _ScanQRCodeState();
}

class _ScanQRCodeState extends State<ScanQRCode> {

  String qrResult = 'Scanned Data will appear here';
  bool isScanned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Code Scanner'),backgroundColor: Colors.deepOrange,),

      body: isScanned
          ?              // Result Screen White page
      Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              qrResult,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isScanned = false;
                  qrResult = 'Scanned Data will appear here';
                });
              },
              child: const Text('Scan Again'),
            ),
          ],
        ),
      )

          :            //  Camera Screen
      MobileScanner(
        onDetect: (capture) {
          final barcodes = capture.barcodes;

          for (final barcode in barcodes) {
            final code = barcode.rawValue;

            if (code != null) {
              setState(() {
                qrResult = code;
                isScanned = true;     // camera colsed & result page
              });
              break;
            }
          }
        },
      ),
    );
  }
}