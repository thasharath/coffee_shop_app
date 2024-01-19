import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/ob-background.png',
              width: wi,
              height: hi * 0.65,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
                stops: [0.4, 0.6],
              ),
            ),
          ),
          Column(children: [
            Container(
              height: hi * 0.55,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Coffee so good, \nyour taste buds \nwill love it.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  letterSpacing: 1,
                  height: 1.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: const Text(
                "The best grain, the finest roast, the \n powerful flavor.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(169, 169, 169, 1),
                  fontSize: 14,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bottombar');
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: wi * 0.3, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromRGBO(198, 124, 78, 1),
                ),
                child: const Text("Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
