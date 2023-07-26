// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:multiplayer_games_flutter/constants.dart';
import 'package:multiplayer_games_flutter/main.dart';
import 'package:multiplayer_games_flutter/screens/lobby.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String screenRoute = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFEBD69),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LobbyScreen.screenRoute);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(80.0),
                      child: Text(
                        'XO',
                        style: customFontBlack,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff6CCCCF),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, GamePage.screenRoute);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(80.0),
                      child: Text(
                        'Shooting',
                        style: customFontBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
