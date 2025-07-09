// Import necessary Flutter packages
import 'package:flutter/material.dart';
import 'package:flutter_create_mywallet/classes/homecontent.dart'; // Update the path according to your app structure

// Splashscreen widget for flutter_create_mywallet app
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

// State class for Splashscreen
class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTopImage(),
            const SizedBox(height: 24),
            _buildTextSection(),
            const SizedBox(height: 32),
            _buildGetStartedButton(context),
          ],
        ),
      ),
    );
  }
}

// Widget for top logo/image
Widget _buildTopImage() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: Center(
      child: Image.asset(
        'assets/images/bank_wallet.png', // Ensure this image exists in your assets folder
        width: 200,
        height: 200,
      ),
    ),
  );
}

// Widget for app title and subtitle
Widget _buildTextSection() {
  return const Column(
    children: [
      Text(
        'Flutter Create MyWallet',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Secure. Simple. Smart digital transactions.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
      ),
    ],
  );
}

// "Get Started" button widget
Widget _buildGetStartedButton(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orangeAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Homecontent()),
      );
    },
    child: const Text(
      'Get Started',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );
}
