import 'package:flutter/material.dart';

void main() {
  runApp(const MobileAppLab());
}

class MobileAppLab extends StatelessWidget {
  const MobileAppLab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile App Lab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile App Lab'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to my Flutter UI Design Lab',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              const Text(
                'This screen uses StatelessWidget to display static content.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InteractiveScreen(),
                    ),
                  );
                },
                child: const Text('Go to Interactive Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InteractiveScreen extends StatefulWidget {
  const InteractiveScreen({super.key});

  @override
  State<InteractiveScreen> createState() => _InteractiveScreenState();
}

class _InteractiveScreenState extends State<InteractiveScreen> {
  String message = 'Press the button to update this text';

  void updateMessage() {
    setState(() {
      message = 'The text changed using StatefulWidget!';
    });
  }

  void resetMessage() {
    setState(() {
      message = 'Press the button to update this text';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: updateMessage,
                child: const Text('Change Text'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: resetMessage,
                child: const Text('Reset Text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
