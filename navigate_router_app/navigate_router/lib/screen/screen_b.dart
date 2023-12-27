import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:navigate_router/routes/app_router.gr.dart';
@RoutePage()
class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.green,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ElevatedButton(child: const Text('Goto Screen C'),
      onPressed: (){context.router.push(const RouteC()); },
      )
      ],
      ),
    );
  }
}