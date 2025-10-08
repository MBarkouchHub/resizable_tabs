import 'package:flutter/material.dart';
import 'package:resizable_tabs/resizable_tabs.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ResizableTabs(
          tabOne: Container(
            color: Colors.blue,
            child: const Center(child: Text('Left Tab')),
          ),
          tabTwo: Container(
            color: Colors.green,
            child: const Center(child: Text('Right Tab')),
          ),
        ),
      ),
    );
  }
}
