import 'package:currency_exchange/ui/widgets/currency_list.dart';
import 'package:currency_exchange/ui/widgets/currency_textbox.dart';
import 'package:flutter/material.dart';

class ConverterPage extends StatelessWidget {
  const ConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Currency Exchanger",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "USD - CAD",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 122, 110, 110)),
            ),
            const CurrencyList(),
            const CurrencyTextbox(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.import_export,
                    size: 50,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 214, 219),
                        border: Border.all(
                            color: Color.fromARGB(255, 203, 214, 219)),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(child: Text("1 USD = 1.28 CAD")),
                  )
                ],
              ),
            ),
            const CurrencyList(),
            const CurrencyTextbox(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
