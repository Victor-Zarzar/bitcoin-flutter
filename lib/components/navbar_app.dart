import 'package:bitcoin_flutter/components/app_theme.dart';
import 'package:bitcoin_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.primaryColor,
        body: pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: BottomColor.thirdColor,
          type: BottomNavigationBarType.fixed,
          onTap: ((value) {
            setState(() {
              _currentIndex = value;
            });
          }),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'lib/assets/icons/1.1.png',
                height: myHeight * 0.03,
                color: BottomColor.primaryColor,
              ),
              label: "",
              activeIcon: Image.asset(
                'lib/assets/icons/1.2.png',
                height: myHeight * 0.03,
                color: BottomColor.secondaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'lib/assets/icons/2.1.png',
                height: myHeight * 0.03,
                color: BottomColor.primaryColor,
              ),
              label: "",
              activeIcon: Image.asset(
                'lib/assets/icons/2.2.png',
                height: myHeight * 0.03,
                color: BottomColor.secondaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'lib/assets/icons/3.1.png',
                height: myHeight * 0.03,
                color: BottomColor.primaryColor,
              ),
              label: "",
              activeIcon: Image.asset(
                'lib/assets/icons/3.2.png',
                height: myHeight * 0.03,
                color: BottomColor.secondaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'lib/assets/icons/4.1.png',
                height: myHeight * 0.03,
                color: BottomColor.primaryColor,
              ),
              label: "",
              activeIcon: Image.asset(
                'lib/assets/icons/4.2.png',
                height: myHeight * 0.03,
                color: BottomColor.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
