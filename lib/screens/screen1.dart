import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

late double height;
late double width;

class MScreen extends StatelessWidget {
  const MScreen({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return const Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Text('First Page'),
        ],
      ),
    );
  }
}
