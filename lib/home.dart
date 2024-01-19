import 'package:coffee_shop_app/product_details.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop_app/search_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextStyle listItemStyle = const TextStyle(
    fontSize: 16.0,
    color: Color.fromRGBO(41, 41, 41, 0.9),
    backgroundColor: Color.fromRGBO(221, 221, 221, 0.3),
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(42, 42, 42, 1),
                  Color.fromRGBO(23, 23, 23, 1)
                ],
              ),
            ),
          ),
          const Positioned(
              top: 80,
              left: 40,
              child: Text(
                'Location',
                style: TextStyle(
                  color: Color.fromRGBO(221, 221, 221, 1),
                  fontSize: 18,
                ),
              )),
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
              )),
          Positioned(
            top: 80,
            left: 315,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/profile.png',
                width: 60,
                height: 60,
              ),
            ),
          ),
          const Positioned(
            top: 170,
            left: 20,
            right: 20,
            child: CoffeeSearchBar(),
          ),
          Align(
            alignment: const Alignment(0, -0.2),
            child: ClipRRect(
              child: Image.asset(
                'assets/buy1get1.png',
              ),
            ),
          ),
          Positioned(
            top: 420,
            left: 20,
            right: 0,
            child: SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 160,
                    child: Card(
                        child: Center(
                      child: Text('Espresso', style: listItemStyle),
                    )),
                  ),
                  SizedBox(
                    width: 160,
                    child: Card(
                        child: Center(
                            child: Text('Americano', style: listItemStyle))),
                  ),
                  SizedBox(
                    width: 160,
                    child: Card(
                        child: Center(
                            child: Text('Macchiato', style: listItemStyle))),
                  ),
                  SizedBox(
                    width: 160,
                    child: Card(
                        child: Center(
                            child: Text('Cappuccino', style: listItemStyle))),
                  ),
                  SizedBox(
                    width: 160,
                    child: Card(
                        child: Center(
                            child: Text('Cafe Latte', style: listItemStyle))),
                  ),
                  SizedBox(
                    width: 160,
                    child: Card(
                        child:
                            Center(child: Text('Mocha', style: listItemStyle))),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 480,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetails()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(230, 230, 230, 0.7),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15, right: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'assets/coffee1.jpeg',
                            width: 170.0,
                            height: 170.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Cappuccino: \$4.53',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
