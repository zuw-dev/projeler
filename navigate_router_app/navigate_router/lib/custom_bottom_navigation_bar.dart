// custom_bottom_navigation_bar.dart

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconHeightMain = MediaQuery.of(context).size.width * 0.25;
    double iconHeight = MediaQuery.of(context).size.width * 0.25;

    return Positioned(
      left: 0,
      right: 0,
      bottom: -30,
      child: Stack(
        alignment: Alignment.center,
        children: [
          BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            items: [
              BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage('assets/images/Hover.png'),
                  height: iconHeight,
                ),
                label: 'Maps',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: iconHeightMain,
                  width: iconHeight,
                  child: const Image(
                    image: AssetImage('assets/images/Button.png'),
                  ),
                ),
                label: 'Button',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage('assets/images/List.png'),
                  height: iconHeight,
                ),
                label: 'List',
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
