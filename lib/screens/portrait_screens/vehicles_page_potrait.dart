import 'package:flutter/material.dart';
import 'package:kid_game/components/card_widget_undirection.dart';
import 'package:kid_game/components/main_menu_button_portrait.dart';
import 'package:kid_game/screens/portrait_screens/background_portrait.dart';

class VehiclesPagePortrait extends StatelessWidget {
  const VehiclesPagePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenShortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPortrait(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainMenuButton(
                    context,
                    screenShortestSide,
                  ),
                  Center(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/bike.png",
                          name: "Bike",
                          word: "Bike",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/bus.png",
                          name: "Bus",
                          word: "Bus",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/car.png",
                          name: "Car",
                          word: "Car",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/helicopter.png",
                          name: "Helicopter",
                          word: "Helicopter",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/excavator.png",
                          name: "Excavator",
                          word: "Excavator",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/lorry.png",
                          name: "Lorry",
                          word: "Lorry",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/motorbike.png",
                          name: "Motorbike",
                          word: "Motorbike",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/plane.png",
                          name: "Plane",
                          word: "Plane",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/scooter.png",
                          name: "Scooter",
                          word: "Scooter",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/skateboard.png",
                          name: "Skateboard",
                          word: "Skateboard",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/train.png",
                          name: "Train",
                          word: "Train",
                        ),
                        kCardUndirection(
                          screenWidth: screenShortestSide,
                          img: "assets/icons/vehicles/truck.png",
                          name: "Truck",
                          word: "Truck",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
