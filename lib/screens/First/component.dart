import 'package:flutter/material.dart';

class Exhibition extends StatelessWidget {
  const Exhibition({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: ((context, index) {
              return Container(
                color: Colors.white,
              );
            })),
      ),
    );
  }
}
