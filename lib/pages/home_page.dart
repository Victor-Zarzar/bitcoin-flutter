import 'package:bitcoin_flutter/components/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: myHeight,
        width: myWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              BackGround.secondaryColor,
              BackGround.thirdColor,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: myHeight * 0.7,
              width: myWidth,
              decoration: BoxDecoration(color: BackGround.primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
