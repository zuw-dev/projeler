// other_page.dart

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigate_router/custom_bottom_navigation_bar.dart';
@RoutePage()
class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: const Center(
        child: Text('Content of Other Page'),
      ),
      // Use the CustomBottomNavigationBar here
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
