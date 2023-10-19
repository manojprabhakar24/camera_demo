import 'package:camera_demo/Mycamera.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;

  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: TakePictureScreen(
      camera: firstCamera,
    ),
  ));
}