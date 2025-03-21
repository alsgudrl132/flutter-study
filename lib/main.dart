import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen2(),
    );
  }
}

// Widget이란 앱의 모든 구성요소, 화면에 그려지는 모든것을 위젯으로 표현가능하다.
// StatelessWidget (상태가 없는 위젯) - 한 번 생성되면 내부데이터나 상태를 변경할 수 없고, UI를 그리기위한 정보만을 가짐

class MainScreen2 extends StatefulWidget {
  const MainScreen2({super.key});

  @override
  State<MainScreen2> createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  String msg = "안녕하세요";

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),() {
      setState(() {
        msg = "안녕하세요2";
      });
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("나의 첫 앱"),), body: Text(msg),);
  }
}

