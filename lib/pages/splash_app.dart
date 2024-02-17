import 'package:bitcoin_flutter/components/app_theme.dart';
import 'package:bitcoin_flutter/components/assets_app.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: BackGround.primaryColor,
        body: SizedBox(
          height: myHeight,
          width: myWidth,
          child: Column(
            children: [
              ImageOne.asset(),
              const Text(
                'The Future',
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
