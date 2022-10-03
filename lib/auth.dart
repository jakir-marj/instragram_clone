import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text('Welcome'),
        ],
      ),
    );
  }
}
