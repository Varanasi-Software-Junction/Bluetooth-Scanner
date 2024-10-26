import 'package:bluetooth_scanner/lutterblueplusmockable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
FlutterBluePlusMockable flutterBlue = FlutterBluePlusMockable();
class FlutterBlueApp extends StatefulWidget {
  const FlutterBlueApp({Key? key}) : super(key: key);

  @override
  State<FlutterBlueApp> createState() => _FlutterBlueAppState();
}

class _FlutterBlueAppState extends State<FlutterBlueApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _startScanning() {
    print("I am scanning");

    flutterBlue.scanResults.listen((results) {
      print("Results ${results}");
      for (ScanResult result in results) {
        print(result);
      }
    });
    flutterBlue.startScan();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: Colors.lightBlue,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              _startScanning();
            }, child: Text("Click Me")),
          ],
        ),
      ),
    );
  }
}
