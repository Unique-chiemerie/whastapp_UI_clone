import 'package:flutter/material.dart';
import 'package:whastapp_clone/screens/chatscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Chatscreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image.network(
              'https://img.icons8.com/?size=96&id=16713&format=png'),
        ),
      ),
    );
  }
}
