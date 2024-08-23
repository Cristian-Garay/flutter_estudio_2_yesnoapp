import 'package:flutter/material.dart';
import 'package:flutter_estudio_2_yesnoapp/config/theme/app_theme.dart';
import 'package:flutter_estudio_2_yesnoapp/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yes No App',
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen());
    // home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Material App Bar"),
    //     ),
    //     body: Center(
    //       child: FilledButton.tonal(
    //           onPressed: () {}, child: const Text("Click Mess")),
    //     )));
  }
}
