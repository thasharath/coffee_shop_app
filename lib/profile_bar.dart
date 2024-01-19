import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Positioned(
          top: 80,
          left: 40,
          child: Text(
            'Location',
            style: TextStyle(
              color: Color.fromRGBO(221, 221, 221, 1),
              fontSize: 18,
            ),
          ),
        ),
        const Positioned(
          top: 100,
          left: 40,
          child: Text(
            'Colombo, Sri Lanka',
            style: TextStyle(
              color: Color.fromRGBO(221, 221, 221, 1),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 315,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // make image rounded
            child: Image.asset(
              'assets/profile.png',
              width: 60,
              height: 60,
            ),
          ),
        ),
      ],
    );
  }
}
