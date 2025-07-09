import 'package:flutter/material.dart';

void main() {
  runApp(MyFlutterChallengeApp());
}

class MyFlutterChallengeApp extends StatelessWidget {
  const MyFlutterChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Challenge',
      home: ChallengeHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChallengeHomePage extends StatelessWidget {
  const ChallengeHomePage({super.key});

  void _handleButtonClick() {
    print("🎉 Button was clicked! Welcome to the Flutter Challenge!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Challenge'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              'Welcome to the Challenge! 🎉',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _handleButtonClick,
              child: Text('Click Me'),
            ),
            SizedBox(height: 30),
            Image.network(
              'https://plus.unsplash.com/premium_photo-1683121710572-7723bd2e235d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YXJ0aWZpY2lhbCUyMGludGVsbGlnZW5jZXxlbnwwfHwwfHx8MA%3D%3D',
              height: 300,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
