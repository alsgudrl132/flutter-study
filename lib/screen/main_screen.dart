import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('메인 화면')),
      body: Center(
        /// 세로로 위젯을 쌓아서 정렬하는 위젯
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("반갑습니다."),
            Text("저는 유데미 강의를 듣고있는 민형기 입니다."),
            Text("저는 민형기 입니다."),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              /// 가로로 위젯을 쌓아서 정렬하는 위젯
              children: [Text("안녕"), Text("하세요"), Text("이것은 가로로 쌓는 위젯입니다.")],
            ),
            Row(
              children: [
                Expanded(flex: 2, child: Text("민형기")),

                /// Expanded의 flex 기본값은 1이다
                Expanded(child: Text("민형기")),
                Expanded(child: Text("민형기")),
              ],
            ),
            Container(
              width: 300,
              height: 100,
              margin: EdgeInsets.only(left: 16, bottom: 20),
              alignment: Alignment.center,
              child: Text("민형기컨테이너"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 100, height: 300, child: Text("민형기사이즈박스")),
          ],
        ),
      ),
    );
  }
}
