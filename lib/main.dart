import 'package:chatapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0XFFFEF9EB))),
      home: const HomeScreen(),
    );
  }
}
