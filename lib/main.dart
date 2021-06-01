import 'package:FinalTic/screens/homeScreen/homeScreen.dart';
import 'package:FinalTic/screens/levelScreen.dart/levelScreen.dart';
import 'package:FinalTic/screens/matchScreen/matchScreen.dart';
import 'package:FinalTic/screens/shopScreen.dart/shopScreen.dart';
import 'package:flutter/material.dart';
import 'package:FinalTic/screens/loginScreen/loginScreen.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  runApp(MyApp());
  await GetStorage.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Tic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        LevelScreen.routeName: (ctx) => LevelScreen(),
        MatchScreen.routeName: (ctx) => MatchScreen(),
        ShopScreen.routeName: (ctx) => ShopScreen(),
      },
    );
  }
}
