import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigate_router/routes/app_router.gr.dart';
@RoutePage()
class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.red,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ElevatedButton(child: const Text('Goto Screen B'),
      onPressed: (){AutoRouter.of(context).push(const RouteB()) ; },
      )
      ],
      ),
    );
  }
}