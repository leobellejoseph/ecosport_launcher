import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherWidget extends StatelessWidget {
  final Size size;
  const WeatherWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white60,
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cebu City',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                WeatherIcons.cloud,
                size: 30,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 8),
              Flexible(
                child: Text(
                  'Cloudy',
                ),
              )
            ],
          ),
          const SizedBox(height: 6),
          const Flexible(
            child: Text(
              'Test only please ignore.',
            ),
          )
        ],
      ),
    );
  }
}
