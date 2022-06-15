import 'package:flutter/material.dart';
import 'package:kid_game/components/test/colors/choice.dart';
import 'package:kid_game/components/test/image/page.dart';

import '../../../components/main_menu_button_portrait.dart';
import '../background_portrait.dart';

class VehiclesTestPotrait extends StatefulWidget {
  const VehiclesTestPotrait({Key? key}) : super(key: key);

  @override
  State<VehiclesTestPotrait> createState() => _VehiclesTestPotraitState();
}

class _VehiclesTestPotraitState extends State<VehiclesTestPotrait> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const BackgroundPortrait(),
          SafeArea(
              child: PageView(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/helicopter",
                    kOptionOne: "Bike",
                    kOptionTwo: "Helicopter",
                    name: "Helicopter",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/bus",
                    kOptionOne: "Bus",
                    kOptionTwo: "Motorbike",
                    name: "Bus",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/lorry",
                    kOptionOne: "Lorry",
                    kOptionTwo: "Train",
                    name: "Lorry",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/skateboard",
                    kOptionOne: "Plane",
                    kOptionTwo: "Skateboard",
                    name: "Skateboard",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/excavator",
                    kOptionOne: "Excavator",
                    kOptionTwo: "Scooter",
                    name: "Excavator",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/car",
                    kOptionOne: "Bus",
                    kOptionTwo: "Car",
                    name: "Car",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/bike",
                    kOptionOne: "Bike",
                    kOptionTwo: "Train",
                    name: "Bike",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/plane",
                    kOptionOne: "Plane",
                    kOptionTwo: "Motorbike",
                    name: "Plane",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/truck",
                    kOptionOne: "Helicopter",
                    kOptionTwo: "Truck",
                    name: "Truck",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/motorbike",
                    kOptionOne: "Motorbike",
                    kOptionTwo: "Bus",
                    name: "Motorbike",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/train",
                    kOptionOne: "Train",
                    kOptionTwo: "Car",
                    name: "Train",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: MainMenuButton(
                      context,
                      screenWidth,
                    ),
                  ),
                  TestImagePage(
                    object: "vehicle",
                    img: "vehicles/scooter",
                    kOptionOne: "Plane",
                    kOptionTwo: "Scooter",
                    name: "Scooter",
                    widgetName: const VehiclesTestPotrait(),
                  ),
                  Stack(
                    children: TestChoice.instance.answerList,
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
