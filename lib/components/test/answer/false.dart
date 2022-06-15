import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';

Widget falseAnswer = Center(
  child: Container(
    width: 300,
    height: 300,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          const Color(0xFF348F50).withOpacity(0.9),
          const Color(0xFF56B4D3).withOpacity(0.9),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: const [0.0, 1.0],
        tileMode: TileMode.clamp,
      ),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        width: 2,
      ),
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          "assets/icons/test/wrong.png",
          width: 150,
        ),
        const SizedBox(
          height: 25,
        ),
        OutlinedText(
          text: const Text(
            "Try Again",
            style: TextStyle(fontSize: 32),
          ),
          strokes: [
            OutlinedTextStroke(
              color: Colors.black,
              width: 2,
            )
          ],
        ),
      ],
    ),
  ),
);
