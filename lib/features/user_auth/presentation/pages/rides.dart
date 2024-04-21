import 'package:flutter/material.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/ride_details.dart';

class RideOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ride Options'),
        // Add a back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header - Journey details
            ListTile(
              title: Text(
                  'Bennett University (Times of India ...) → Meerut, Uttar Pradesh'),
              subtitle: Text('Today, 1 passenger'),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(),
            // Ride options
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RideInformationPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black54, width: 0.1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 2,
                      blurRadius: 9,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(8),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('17:30'),
                          SizedBox(width: 8),
                          Icon(Icons.circle, size: 10),
                          SizedBox(width: 8),
                          Text('Greater Noida'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('19:00'),
                          SizedBox(width: 8),
                          Icon(Icons.location_on, size: 10),
                          SizedBox(width: 8),
                          Text('Meerut'),
                        ],
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 223, 220, 220),
                        child: Icon(Icons.person),
                      ),
                      SizedBox(width: 8),
                      Text('Vishwadeep'),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text('4.9'),
                    ],
                  ),
                  trailing: Text(
                    '₹180.00',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RideInformationPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black54, width: 0.1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 2,
                      blurRadius: 9,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(8),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('18:00'),
                          SizedBox(width: 8),
                          Icon(Icons.circle, size: 10),
                          SizedBox(width: 8),
                          Text('Pari Chowk'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('19:30'),
                          SizedBox(width: 8),
                          Icon(Icons.location_on, size: 10),
                          SizedBox(width: 8),
                          Text('Meerut'),
                        ],
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 223, 220, 220),
                        child: Icon(Icons.person),
                      ),
                      SizedBox(width: 8),
                      Text('Krishna'),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text('4.8'),
                    ],
                  ),
                  trailing: Text(
                    '₹200.00',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RideInformationPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black54, width: 0.1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 2,
                      blurRadius: 9,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(8),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('18:30'),
                          SizedBox(width: 8),
                          Icon(Icons.circle, size: 10),
                          SizedBox(width: 8),
                          Text('Alpha II'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('20:00'),
                          SizedBox(width: 8),
                          Icon(Icons.location_on, size: 10),
                          SizedBox(width: 8),
                          Text('Partapur, Meerut'),
                        ],
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 223, 220, 220),
                        child: Icon(Icons.person),
                      ),
                      SizedBox(width: 8),
                      Text('Rahul'),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text('4.7'),
                    ],
                  ),
                  trailing: Text(
                    '₹160.00',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // Footer - Button to create a ride alert
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Implement create a ride alert functionality
                },
                child: Text(
                  'Create a ride alert',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  backgroundColor: Colors.black, // Button color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
