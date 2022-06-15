import 'package:flutter/material.dart';

class BackgroundPortrait extends StatelessWidget {
  const BackgroundPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
