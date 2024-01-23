import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:website/screens/First/inside/component.dart';
import 'package:google_fonts/google_fonts.dart';

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
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.all(10.0),
          padding:
              const EdgeInsets.only(left: 30, top: 20, right: 30, bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
          height: h,
          width: w - 320,
        ),
        Column(children: [
          const SizedBox(
            height: 15,
          ),
          Text('Projects',
              style: GoogleFonts.righteous(
                color: const Color.fromARGB(255, 0, 102, 255),
                fontSize: 40,
              ),
              textAlign: TextAlign.center),
          const SizedBox(
            height: 20,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: h - 95,
            width: w - 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.white, width: 2)),
          ),
        ]),

        //const Exhibition(),
      ],
    );
  }
}
