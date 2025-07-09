// Importing necessary packages and files.
import 'package:flutter/material.dart'; // Flutter's material design package for UI components.
import 'package:flutter_create_mywallet/classes/homecontent.dart'; // Home content widget.

// HomePage widget represents the main screen of the app with a bottom navigation bar.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState(); // Creates the state for the HomePage widget.
}

// State class for the HomePage widget.
class _HomePageState extends State<HomePage> {
  int currentIndex = 0; // Index to track the current selected tab.
  final List<Widget> _pages = [
    const Homecontent(), // Home content screen.
    // const MessagesScreen(), // Messages screen (assuming this is defined elsewhere).
    // const SettingsScreen(), // Settings screen (assuming this is defined elsewhere).
  ];

  // Define colors from your Login & Signup screens
  final Color primaryColor = const Color(0xFF4A90E2); // Primary color matching the login/signup screens.
  final Color backgroundColor = const Color(0xFFF5F7FA); // Background color matching the login/signup screens.
  final Color bottomNavSelectedColor = const Color(0xFF4A90E2); // Color for the selected bottom navigation item.
  final Color bottomNavUnselectedColor = Colors.grey; // Color for the unselected bottom navigation items.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor, // Background color for the scaffold.
      appBar: AppBar(
        title: const Text(
          'My Pocket Wallet', // Title of the app bar.
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color for the app bar title.
          ),
        ),
        centerTitle: true, // Centers the title in the app bar.
        backgroundColor: primaryColor, // Background color for the app bar.
        elevation: 3, // Elevation (shadow) for the app bar.
      ),
      body: _pages[currentIndex], // Displays the current selected page.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // Index of the currently selected tab.
        onTap: (int index) {
          setState(() {
            currentIndex = index; // Updates the state to reflect the new selected tab.
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Home icon.
            label: 'Home', // Home label.
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail), // Messages icon.
            label: 'Messages', // Messages label.
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), // Settings icon.
            label: 'Settings', // Settings label.
          ),
        ],
        selectedItemColor: bottomNavSelectedColor, // Color for the selected item.
        unselectedItemColor: bottomNavUnselectedColor, // Color for the unselected items.
        backgroundColor: Colors.white, // Background color for the bottom navigation bar.
        elevation: 10, // Elevation (shadow) for the bottom navigation bar.
        type: BottomNavigationBarType.fixed, // Type of bottom navigation bar (fixed width for items).
      ),
    );
  }
}