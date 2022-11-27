import 'package:ecosport_launcher/config/config.dart';
import 'package:ecosport_launcher/screens/screens.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Config.getRoute,
      initialRoute: MainScreen.id,
    );
  }
}
