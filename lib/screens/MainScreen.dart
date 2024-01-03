import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

late double height;
late double width;

class MScreen extends StatelessWidget {
  MScreen({super.key});

  ScrollController Vscroll = ScrollController();
  ScrollController Hscroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            controller: Vscroll,
            child: const Column() //추후에 가로 Scroll은 Hscroll을 사용
            ,
          ),
        ],
      ),
    );
  }
}
