import 'package:flutter/material.dart';

class CurrencyTextbox extends StatefulWidget {
  const CurrencyTextbox({super.key});
  @override
  State<CurrencyTextbox> createState() => _CurrencyTextboxState();
}

class _CurrencyTextboxState extends State<CurrencyTextbox> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController(text: "0.00");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
    );
  }
}
