import 'dart:async';

import 'package:bluetooth_scanner/flutterblueapp.dart';
import 'package:bluetooth_scanner/lutterblueplusmockable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

// import 'package:flutter_blue/flutter_blue.dart';
void main() {
  FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);
_startScanning();
  runApp(const FlutterBlueApp());
}

// FlutterBluePlus flutterBlue = FlutterBluePlus.instance;
FlutterBluePlusMockable flutterBlue = FlutterBluePlusMockable();
void _startScanning() {
  print("I am scanning");

  flutterBlue.scanResults.listen((results) {
    for (ScanResult result in results) {
      print(result);
    }
  });
  flutterBlue.startScan();
}
