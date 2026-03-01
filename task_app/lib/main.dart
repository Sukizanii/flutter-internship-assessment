import 'package:flutter/material.dart';
import 'core/colors.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(const BertugasApp());
}

class BertugasApp extends StatelessWidget {
  const BertugasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bertugas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimary),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
