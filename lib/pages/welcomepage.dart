import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF103CE7),
            Color(0xFF64E9FF),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/illustration.png"),
            const SizedBox(
              height: 20,
            ),
            const welcometext(
              data: 'Enjoy your journey \nonly with us',
              size: 30,
              weight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            const SizedBox(
              height: 30,
            ),
            const welcometext(
              data:
                  'All you vacation destinations are here, \nenjoy your holiday',
              size: 15,
              weight: FontWeight.normal,
              color: Color(0xFF424242),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 8.0,
                    ),
                  ),
                  child: const Text("Get Started"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class welcometext extends StatelessWidget {
  const welcometext({
    required this.data,
    required this.size,
    required this.weight,
    required this.color,
    Key? key,
  }) : super(key: key);

  final String data;
  final double size;
  final FontWeight weight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: weight,
        fontSize: size,
        color: color,
      ),
    );
  }
}
