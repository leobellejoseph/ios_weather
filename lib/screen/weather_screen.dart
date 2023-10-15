import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ios_weather/screen/widgets/custom_scroll.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text('iOS Weather'),
      ),
      body: const CustomScroll(backgroundColor: Colors.transparent),
    );
  }
}