import 'package:flutter/material.dart';
import 'package:whastapp_clone/screens/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
    ),
  );
}
