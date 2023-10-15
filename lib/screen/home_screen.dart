import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ios_weather/screen/weather_screen.dart';
import 'package:ios_weather/screen/widgets/custom_scroll.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'home';
  static Route route() =>
      MaterialPageRoute(builder: (context) => const HomeScreen(), settings: const RouteSettings(name: id));
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final OverlayEntry _overlayEntry;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('images/wallpaper.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: CustomScroll(backgroundColor: Colors.transparent),
      ),
    );
  }
}