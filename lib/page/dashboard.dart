import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello World..!",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome To JBGO..'),
        ),
        body: const Center(
          child: Text('Hello World..'),
        ),
      ),
    );
  }
}
