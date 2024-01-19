import 'package:flutter/material.dart';

import 'order.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _isExpanded = false;
  String _selectedSize = 'S';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Product Details'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -0.9),
            child: ClipRRect(
              child: Image.asset(
                'assets/Rectangle 1706.png',
              ),
            ),
          ),
          const Positioned(
              top: 300,
              left: 40,
              child: Text(
                'Capuccino',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )),
          const Positioned(
              top: 340,
              left: 40,
              child: Text(
                'With Chocolate',
                style: TextStyle(
                  color: Color.fromRGBO(41, 41, 41, 0.5),
                  fontSize: 14,
                ),
              )),
          const Positioned(
            top: 380,
            left: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Color.fromRGBO(251, 190, 33, 1)),
                    SizedBox(width: 5),
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      ' (230)',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 360,
            left: 260,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/Frame 19.png',
                width: 60,
                height: 60,
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 315,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/Frame 20.png',
                width: 60,
                height: 60,
              ),
            ),
          ),
          const Positioned(
              top: 370,
              child: Divider(
                color: Colors.grey,
                height: 30,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              )),
          Positioned(
            top: 420,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 80,
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Indulge in the rich and aromatic experience of our Cappuccino, a classic Italian espresso-based beverage',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      if (_isExpanded)
                        const Text(
                          'Indulge in the rich and aromatic experience of our Cappuccino, a classic Italian espresso-based beverage that embodies the perfect harmony of espresso & steamed milk.',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                        child: Text(
                          _isExpanded ? 'Read Less' : 'Read More',
                          style:
                              const TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 555,
            left: 95,
            child: Row(
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _selectedSize = 'S';
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.orange),
                    backgroundColor: _selectedSize == 'S'
                        ? Colors.orange.shade100
                        : Colors.white,
                  ),
                  child: const Text(
                    'S',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _selectedSize = 'M';
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.orange),
                    backgroundColor: _selectedSize == 'M'
                        ? Colors.orange.shade100
                        : Colors.white,
                  ),
                  child: const Text(
                    'M',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _selectedSize = 'L';
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.orange),
                    backgroundColor: _selectedSize == 'L'
                        ? Colors.orange.shade100
                        : Colors.white,
                  ),
                  child: const Text(
                    'L',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 670,
            left: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Price',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      '\$12.99',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 670,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
              ),
              child: const Text('Buy Now'),
            ),
          )
        ],
      ),
    );
  }
}
