import 'package:flutter/material.dart';

void main() {
  runApp(const MainView());
}

class MainView extends StatelessWidget {
  const MainView
({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Scaffold(),
    );
  }
}