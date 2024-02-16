import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:website/screens/First/Introduce.dart';
import 'package:website/screens/First/Productlist.dart';
import 'package:website/screens/First/showproduct.dart';

import 'package:assets_audio_player/assets_audio_player.dart';

late double height;
late double width;

class MScreen extends StatelessWidget {
  MScreen({super.key});

  ScrollController VScroll = ScrollController();
  ScrollController HScroll = ScrollController();

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
            controller: VScroll,
            child: Row(
              children: [
                const Column(
                  children: [Introduce(), ProductList()],
                ),
                Expanded(
                  child: Column(
                    children: [
                      ShowProduct(
                        HScorll: HScroll,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ) //추후에 가로 Scroll은 Hscroll을 사용
          ,
        ],
      ),
    );
  }
}
