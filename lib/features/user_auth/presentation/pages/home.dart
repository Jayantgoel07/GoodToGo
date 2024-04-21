import 'package:flutter/material.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/prev_rides.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/ride_details.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/rides.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Pick Of Rides At Low Prices',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: [
                Container(
                  color: Colors.white70
                      .withOpacity(1), // Semi-transparent background color
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/home_bg.jpg'),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                  height:
                                      70), // Space between image and content
                              _buildLocationInput('Leaving from'),
                              SizedBox(height: 40),
                              _buildLocationInput('Going to'),
                              SizedBox(height: 120),
                              _buildDatePicker(context),
                              SizedBox(height: 20),

                              SizedBox(
                                width: 320,
                                height: 45,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigate to the banner page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RideOptionsPage()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                  ),
                                  child: Text(
                                    'Search',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        // _buildRideOption(
                        //   'Bennett University',
                        //   'Meerut, Uttar Pradesh',
                        //   'Fri 05 April',
                        // ),
                        // _buildRideOption(
                        //   'Meerut, Uttar Pradesh',
                        //   'Bennett',
                        //   'Mon 08 April',
                        // ),
                        // Add more ride options here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              'GoodToGo',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLocationInput(String hint) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 200, 198, 198).withOpacity(0.3),
        borderRadius: BorderRadius.circular(5),
        //   boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 216, 212, 212).withOpacity(0.5),
        //     spreadRadius: 2,
        //     blurRadius: 9,
        //     offset: Offset(0, 1),
        //   ),
        // ],
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: hint,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildRideOption(String from, String to, String date) {
    return ListTile(
      title: Text('$from → $to'),
      subtitle: Text(date),
      onTap: () {
        // Implement tap functionality
      },
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2025),
          );
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        child: Text(
          'Pick a Date',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
