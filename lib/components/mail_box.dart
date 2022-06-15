import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:kid_game/components/database/database_helper.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:kid_game/globals.dart' as global;

import '../screens/portrait_screens/main_menu_portrait.dart';

class MailButton extends StatefulWidget {
  const MailButton({Key? key}) : super(key: key);

  @override
  State<MailButton> createState() => _MailButtonState();
}

class _MailButtonState extends State<MailButton> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    TextEditingController mailController = TextEditingController();
    return GestureDetector(
      onTap: () async {
        setState(() {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  insetPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.015,
                    vertical: screenHeight * 0.12,
                  ),
                  content: Container(
                    width: screenWidth * 1,
                    height: screenHeight * 0.4,
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
                        color: Colors.black,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: screenHeight * 0.025),
                              child: OutlinedText(
                                text: const Text(
                                  "Enter An E-Mail",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                                strokes: [
                                  OutlinedTextStroke(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: screenWidth * 0.6,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: TextField(
                                      controller: mailController,
                                      maxLines: 1,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                                //Mail Text Field
                                GestureDetector(
                                  onTap: () async {
                                    setState(() {
                                      if (EmailValidator.validate(
                                          mailController.text)) {
                                        DatabaseHelper.instance
                                            .insertMail(mailController.text);
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  MainMenuPortrait(
                                                      player: global.player),
                                            ));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text("Check your mail!")));
                                      }
                                    });
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          const Color(0xFF348F50)
                                              .withOpacity(0.5),
                                          const Color(0xFF56B4D3)
                                              .withOpacity(0.5),
                                        ],
                                        begin: const FractionalOffset(0.0, 0.0),
                                        end: const FractionalOffset(1.0, 0.0),
                                        stops: const [0.0, 1.0],
                                        tileMode: TileMode.clamp,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.black,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                );
              });
        });
      },
      child: Padding(
        padding:
            EdgeInsets.only(top: 20, bottom: 20, right: screenWidth * 0.024),
        child: Container(
          width: 40,
          height: 40,
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
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.mail,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

/*
await DatabaseHelper.instance
                                        .insertMail(mailController.text);
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainMenuPortrait(
                                                  player: global.player),
                                        ));
*/