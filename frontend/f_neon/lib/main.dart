import 'package:f_neon/Register.dart';
import 'package:flutter/material.dart';
import 'Register.dart'; // LoginPage 클래스가 있는 파일 import
import 'package:f_neon/accept.dart';
import 'package:f_neon/login.dart';
import 'package:f_neon/Register_Ok.dart';
import 'package:f_neon/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MainScreen(), // 여기에 LoginPage 연결!
      debugShowCheckedModeBanner: false, // 상단 debug 배너 제거
    );
  }
}
