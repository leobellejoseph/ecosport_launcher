import 'package:ecosport_launcher/screens/screens.dart';
import 'package:flutter/material.dart';

import 'time_widget.dart';

class TimeWeather extends StatelessWidget {
  final Size size;
  const TimeWeather({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          splashColor: Colors.yellowAccent,
          color: Colors.yellow.shade700,
          onPressed: () {
            Navigator.pushNamed(context, AppScreen.id);
          },
          icon: const Icon(Icons.apps, size: 50),
        ),
        TimeWidget(
          size: size,
        ),
      ],
    );
  }
}
