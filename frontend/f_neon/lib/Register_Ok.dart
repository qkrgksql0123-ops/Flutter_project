import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_sharp, color: Colors.redAccent, size: 150),
            SizedBox(height: 15),
            Text(
              "회원가입 성공!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 15),
            Text(
              "프로해빗의 회원이 되신 것을 환영합니다",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                print("계정생성");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                padding: EdgeInsets.all(10),
                backgroundColor: const Color.fromARGB(255, 255, 87, 87),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text("로그인하여 프록해빗 시작하기"),
            ),
          ],
        ),
      ),
    );
  }
}
