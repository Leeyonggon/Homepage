import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:website/screens/First/component.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({super.key, required this.HScorll});
  final ScrollController HScorll;

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

int index = 1;

class _ShowProductState extends State<ShowProduct> {
  double sPos = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          padding:
              const EdgeInsets.only(left: 30, top: 20, right: 30, bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
          height: h,
          width: w - 320,
        ),
        const Column(children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Projects',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ]),
        //const Exhibition(),
      ],
    );
  }
}
