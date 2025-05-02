import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final IconData icon;
  final String temprature;
  final String time;
  const HourlyForecastItem({
    required this.time,
    required this.temprature,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Convert Kelvin to Celsius
    final double tempCelsius = double.parse(temprature) - 273.15;

    return Card(
      color: Color(0xFF7a452c),
      child: SizedBox(
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Icon(icon, size: 32, color: Colors.white),
              const SizedBox(height: 8),
              Text(
                "${tempCelsius.toStringAsFixed(1)} °C",
                style: const TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
