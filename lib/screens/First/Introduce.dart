import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

import 'package:assets_audio_player/assets_audio_player.dart';

import 'dart:js' as js;

class Introduce extends StatefulWidget {
  const Introduce({super.key});

  @override
  State<Introduce> createState() => _IntroduceState();
}

class _IntroduceState extends State<Introduce> {
  late final AssetsAudioPlayer _assetsAudioPlayer =
      AssetsAudioPlayer.newPlayer();

  @override
  void initState() {
    super.initState();

    _assetsAudioPlayer.open(
      Audio("assets/audio/piano.mp3"),
      loopMode: LoopMode.single, //반복여부 (.none):없음
      autoStart: true, // 자동시작
      //volume: 5,
    );

    _assetsAudioPlayer.play();
    // _assetsAudioPlayer.pause();
    // _assetsAudioPlayer.stop();
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.only(top: 10),
          // padding:
          //     const EdgeInsets.only(left: 30, top: 0, right: 30, bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.black),
          height: 300,
          width: 320,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: const Border(
                      bottom: BorderSide(color: Colors.white, width: 2))),
              child: Text(
                " \t\t\t\t\t\t\t           Introduce",
                style: GoogleFonts.righteous(
                  color: const Color.fromARGB(255, 0, 102, 255),
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // Row 범위를 잡지 못해서? Row 주석 처리시 원하는대로 작동
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/gons.jpg',
                          width: 120,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          // email등 추가할것 추가
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                js.context.callMethod(
                                    "open", ['https://github.com/Leeyonggon']);
                              },
                              child: Image.asset(
                                'assets/github-mark-white.png',
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Clipboard.setData(
                                  const ClipboardData(
                                      text: 'gong1752@icloud.com'),
                                );
                                Get.closeAllSnackbars();
                                Get.snackbar('이메일 주소가 클립보드에 저장되었습니다!',
                                    'gong1752@icloud.com',
                                    backgroundColor: Colors.white,
                                    snackPosition: SnackPosition.BOTTOM,
                                    forwardAnimationCurve: Curves.easeIn,
                                    reverseAnimationCurve: Curves.easeOut);
                              },
                              child: const Icon(Icons.mail,
                                  color: Colors.white, size: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '이름 : 이용곤',
                            style: GoogleFonts.jua(
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            '직업 : 휴학생',
                            style: GoogleFonts.jua(
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            "설명 :",
                            style: GoogleFonts.jua(
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            'Flutter를 연습중입니다',
                            style: GoogleFonts.jua(
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

//import 'package:just_audio/just_audio.dart';

// final player = AudioPlayer();

// Future playAudio() async {
//   final duration = await player.setAsset("assets/audio/piano.mp3");
//   await player.play();
// } 

// 배경 음악 실행 다른 코드 *함수로 만들어서 initState()에서 playAudio(); 사용

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