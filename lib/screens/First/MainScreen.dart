import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:website/screens/First/Introduce.dart';
import 'package:website/screens/First/Productlist.dart';
import 'package:website/screens/First/showproduct.dart';

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
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            controller: Vscroll,
            child: const Row(
              children: [
                Column(
                  children: [Introduce(), ProductList()],
                ),
                Expanded(
                  child: Column(
                    children: [ShowProduct()],
                  ),
                ),
              ],
            ) //추후에 가로 Scroll은 Hscroll을 사용
            ,
          ),
        ],
      ),
    );
  }
}
