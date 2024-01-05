import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Introduce extends StatefulWidget {
  const Introduce({super.key});

  @override
  State<Introduce> createState() => _IntroduceState();
}

class _IntroduceState extends State<Introduce> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 30, top: 20, right: 30, bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
          height: 200,
          width: 250,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              " \t\t\t\t Develop Developer  \n   \t\t    Gon Page",
              style: GoogleFonts.lato(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/github-mark-white.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}





/*Stack(
          alignment: AlignmentDirectional.center,
          clipBehavior: Clip.none,
          children: [
            SvgPicture.asset(
              'assets/icons/github_mark_white.svg',
            ),
            //클릭영역
            Positioned(
                width: 50,
                height: 50,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print('move to Gonhub');
                    },
                  ),
                )),
          ],
        ),*/