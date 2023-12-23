import 'package:flutter/material.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 2)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.network(
            "https://cdn-icons-png.flaticon.com/512/5373/5373324.png"),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("USD"),
            Text("United States Dollars"),
          ],
        ),
        const Icon(
          Icons.keyboard_arrow_down,
          size: 30,
          color: Colors.black,
        )
      ]),
    );
  }
}
