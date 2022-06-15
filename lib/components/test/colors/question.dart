// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kid_game/components/functions/functions.dart';
import 'package:outlined_text/outlined_text.dart';

class TestQuestion extends StatefulWidget {
  var kColor;
  final String name;

  TestQuestion({
    Key? key,
    required this.kColor,
    required this.name,
  }) : super(key: key);

  @override
  State<TestQuestion> createState() => _TestQuestionState();
}

class _TestQuestionState extends State<TestQuestion> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: screenHeight * 0.02),
      child: Container(
        width: screenWidth * 0.95,
        height: screenHeight * 0.5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF348F50).withOpacity(0.5),
              const Color(0xFF56B4D3).withOpacity(0.5),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.12,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        FunctionOfCompenents.instance
                            .speakTitle("Which color on the image?");
                      },
                      child: OutlinedText(
                        text: const Text(
                          "Which color on the image?",
                          style: TextStyle(
                            fontSize: 38,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        strokes: [
                          OutlinedTextStroke(
                            width: 3,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  FunctionOfCompenents.instance.speakTitle(widget.name);
                });
              },
              child: Container(
                width: screenWidth * 0.75,
                height: screenWidth * 0.75,
                decoration: BoxDecoration(
                  color: widget.kColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
