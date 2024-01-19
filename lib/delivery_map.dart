// order_tracking_page.dart
import 'package:flutter/material.dart';
import 'tracking_details_page.dart'; // import the TrackingDetailsPage

class DeliveryMap extends StatefulWidget {
  const DeliveryMap({Key? key}) : super(key: key);

  @override
  _DeliveryMapState createState() => _DeliveryMapState();
}

class _DeliveryMapState extends State<DeliveryMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/maps.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1, // Initial height of the Sheet, 30% of screen
            minChildSize: 0.1, // Minimum height of the Sheet, 10% of screen
            maxChildSize: 0.55, // Maximum height of the Sheet, 90% of screen
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: const TrackingDetailsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
