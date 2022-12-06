import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'qrscan',
      theme: ThemeData(
      ),
      home: scna_Screen(),
    );
  }
}


MobileScannerController cameraController = MobileScannerController();


class scna_Screen extends StatelessWidget {
  const scna_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mobile Report'),
          actions: [
            IconButton(
              color: Colors.white,
              icon: ValueListenableBuilder(
                valueListenable: cameraController.cameraFacingState,
                builder: (context, state, child) {
                  switch (state as CameraFacing) {
                    case CameraFacing.front:
                      return const Icon(Icons.camera_front);
                    case CameraFacing.back:
                      return const Icon(Icons.camera_rear);
                  }
                },
              ),
              iconSize: 32.0,
              onPressed: () => cameraController.switchCamera(),
            ),
          ],
        ),
        body: MobileScanner(
            allowDuplicates: false,
            controller: cameraController,
            onDetect: (barcode, args) {
              if (barcode.rawValue == null) {
                debugPrint('Failed to scan Barcode');
              } else {
                final String code = barcode.rawValue!;
                debugPrint('Barcode found! $code');
              }
            }));
  }
}