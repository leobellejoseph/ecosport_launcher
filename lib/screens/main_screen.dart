import 'package:ecosport_launcher/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/wallpaper.jpeg'))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TimeWidget(
                            size: Size(constraints.maxWidth * 0.49,
                                constraints.maxHeight * 0.12),
                          ),
                          WeatherWidget(
                            size: Size(constraints.maxWidth * 0.49,
                                constraints.maxHeight * 0.12),
                          ),
                        ],
                      ),
                      Card(
                        elevation: 0,
                        child: SizedBox(
                          height: constraints.maxHeight * 0.5,
                          width: constraints.maxWidth * 0.9,
                          child: ListView(
                            children: List.generate(
                              30,
                              (index) => ListTile(
                                tileColor: Colors.lightBlueAccent,
                                title: Text(
                                  'No. $index',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
