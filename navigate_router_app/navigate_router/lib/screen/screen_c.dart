import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:navigate_router/routes/app_router.gr.dart';
@RoutePage()
class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ElevatedButton(child: const Text('Goto Screen A'),
      onPressed: (){AutoRouter.of(context).push(const RouteA()) ; },
      )
      ],
      ),
    );
  }
}