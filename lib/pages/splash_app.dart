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
        backgroundColor: AppTheme.primaryColor,
        body: SizedBox(
          height: myHeight,
          width: myWidth,
          child: Column(
            children: [
              ImageOne.asset(),
              const Text(
                'The Future',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                'Learn more about cryptocurrency, look to',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: FontTextColor.primaryColor),
              ),
              Text(
                'the future in IO Crypto',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: FontTextColor.primaryColor),
              ),
              Container(
                decoration: BoxDecoration(color: SplashColor.primaryColor),
                child: const Row(
                  children: [
                    Text(
                      'Create',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    Icon(Icons.arrow_forward_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
