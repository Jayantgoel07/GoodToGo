import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart'; // Importing the SnakeNavigationBar package
import 'package:goodtogo/features/user_auth/presentation/pages/home.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/prev_rides.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentTabIndex = 0; // Renamed to match the snake navigation convention

  late List<Widget> _pages; // List of pages in the bottom navigation
  late Widget _currentPage; // The current page being displayed
  late Home _home; // Individual page instances
  late PreviousRidesPage _prevRides;
  late ProfilePage _profile;

  @override
  void initState() {
    _home = Home(); // Initialize the individual page instances
    _prevRides = PreviousRidesPage();
    _profile = ProfilePage();
    _pages = [_home, _prevRides, _profile]; // Populate the list of pages
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SnakeNavigationBar.color( // Using SnakeNavigationBar
        height: 60, // Set height for the navigation bar
        backgroundColor: Colors.white, // Set background color for the bar
        behaviour: SnakeBarBehaviour.pinned, // Determines the snake's behavior
        snakeShape: SnakeShape.circle, // Define the snake's shape
        padding: EdgeInsets.all(5), // Padding around the bar
        snakeViewColor: Colors.black, // The color of the snake indicator
        selectedItemColor:
            (SnakeShape.circle == SnakeShape.circle) ? Colors.white : null, // Color for the selected item
        unselectedItemColor: Colors.black54, // Color for unselected items
        showSelectedLabels: true, // Show labels for selected items
        showUnselectedLabels: true, // Show labels for unselected items
        currentIndex: _currentTabIndex, // Set the current index for the bar
        onTap: (index) {
          setState(() {
            _currentTabIndex = index; // Update the current index when an item is tapped
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'), // Navigation items
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Previous Rides'), // Adjusted the label name
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'), // Updated icon for the profile
        ],
      ),
      body: _pages[_currentTabIndex], // Display the current page based on the selected index
    );
  }
}
