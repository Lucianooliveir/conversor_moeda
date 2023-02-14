import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/currency_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 100, left: 30, right: 30, bottom: 20),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(700),
                        color: Color(0xFF58606A)),
                    child: Image.asset(
                      "assets/logo.png",
                      height: 200,
                      width: 200,
                    )),
                SizedBox(
                  height: 50,
                ),
                currency_box(),
                SizedBox(
                  height: 10,
                ),
                currency_box(),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber.withAlpha(150),
                    ),
                    onPressed: () {},
                    child: Text("Converter"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
