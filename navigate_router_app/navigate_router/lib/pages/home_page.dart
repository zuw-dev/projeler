import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    Container(
      child: const Center(
        child: Text('Map Content'),
      ),
    ),
    Container(
      child: const Center(
        child: Text('Weather Content'),
      ),
    ),
    Container(
      child: const Center(
        child: Text('Settings Content'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Stack(
        children: [
          // Background Image for BottomNavigationBar
          Positioned(
            left: 0,
            right: 0,
            bottom: -30,
            child: Container(
              height: kBottomNavigationBarHeight + 70,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage('assets/images/Subtract.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Bottom Navigation Bar
          Positioned(
            left: 0,
            right: 0,
            bottom: -30,
            child: Stack(
              alignment: Alignment.center,
              children: [
                BottomNavigationBar(
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Image(
                        image: const AssetImage('assets/images/Hover.png'),
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: const Image(
                          image: AssetImage('assets/images/Button.png'),
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Image(
                        image: const AssetImage('assets/images/List.png'),
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      label: '',
                    ),
                  ],
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ],
            ),
          ),
          // Page Content
          _tabs[_currentIndex],
        ],
      ),
    );
  }
}
