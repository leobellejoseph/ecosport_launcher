import 'package:ecosport_launcher/config/config.dart';
import 'package:ecosport_launcher/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  final packageInfo = await PackageInfo.fromPlatform();
  runApp(MainApp(package: packageInfo));
}

class MainApp extends StatelessWidget {
  final PackageInfo package;

  const MainApp({Key? key, required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => package,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Config.getRoute,
        initialRoute: MainScreen.id,
      ),
    );
  }
}
