import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // Define your tabs here
  final List<Widget> _tabs = [
    // Replace these with the actual widgets you want to display
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
    double iconHeightmain = MediaQuery.of(context).size.width * 0.25;
    double iconHeight = MediaQuery.of(context).size.width * 0.25;

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
              height: kBottomNavigationBarHeight + 70, // Increase the height
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
                        image: AssetImage('assets/images/Hover.png'),
                        height: iconHeight,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: SizedBox(
                        height: iconHeightmain,
                        width: iconHeight,
                        child: Image(
                          image: AssetImage('assets/images/Button.png'),
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Image(
                        image: AssetImage('assets/images/List.png'),
                        height: iconHeight,
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
