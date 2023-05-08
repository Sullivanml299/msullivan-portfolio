import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/entry_grid.dart';
import 'package:msullivan_portfolio/header.dart';
import 'package:msullivan_portfolio/utils/custom_components.dart';

import 'footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[900],
      ),
      home: const Portfolio(),
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeartLamp Games'),
        actions: _getCustomButtons(),
      ),
      body: Column(
        children: [
          Header(
              img:
                  Image.asset('images/U_Logo_T1_MadeWith_Small_White_RGB.png')),
          const EntryGrid()
        ],
      ),
      bottomNavigationBar: Footer(),
    );
  }

  List<Widget> _getCustomButtons() {
    return [
      CustomAppBarButton(
          img: Image.asset('images/U_Logo_T1_MadeWith_Small_White_RGB.png'),
          onPressed: () {
            print("Unity");
            // TODO:
          }),
      CustomAppBarButton(
          img: Image.asset('images/UE_Logo_horizontal_unreal-engine_white.png'),
          onPressed: () {
            print("UE");
            // TODO:
          }),
      CustomAppBarButton(
          img: Image.asset('images/WebGL-Logo.png'),
          onPressed: () {
            print("WebGL");
            // TODO:
          }),
      CustomAppBarButton(
          img: Image.asset('images/ludum_dare.png'),
          onPressed: () {
            print("Ludum Dare");
            // TODO:
          }),
    ];
  }
}
