import 'package:flutter/material.dart';
import 'package:weather_app/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true), // .copyWith(appBarTheme: )
      // it can be used also when we need to set
      // a custom app bar theme without chnaging overall theme
      home: const WeatherScreen(),
    );
  }
}
