import 'package:flutter/material.dart';
import 'package:navigation/screen/dashboard_scren.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DashboardScreen()
    );
  }
}
