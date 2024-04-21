import 'package:flutter/material.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/profile.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/review.dart';

class PreviousRidesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Rides'),
        ),
        body: ListView.builder(
          itemCount: previousRides.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ReviewPage()),
                );
              },
              child: Card(
                elevation: 5, // Add elevation for a shadow effect
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Add margin for spacing
                child: ListTile(
                  leading: Icon(Icons.directions_car, color: Colors.blue), // Change icon color
                  title: Text(
                    previousRides[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Date: ${previousRides[index].date}',
                    style: TextStyle(color: Colors.grey[600]), // Change subtitle color
                  ),
                  trailing: Text(
                    '\₹${previousRides[index].fare.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green, // Change fare color
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Ride {
  final String name;
  final String date;
  final double fare;

  Ride({
    required this.name,
    required this.date,
    required this.fare,
  });
}

List<Ride> previousRides = [
  Ride(
    name: 'Rahul',
    date: 'April 20, 2024',
    fare: 180,
  ),
  Ride(
    name: 'Kabir',
    date: 'April 18, 2024',
    fare: 220,
  ),
  Ride(
    name: 'Aditya',
    date: 'April 5, 2024',
    fare: 200,
  ),
];
