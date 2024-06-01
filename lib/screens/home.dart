// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_card_1/components/card.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const sizePrimary = 60.00;
    var baseColor = Colors.grey[300];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: CustomCards(
          size: sizePrimary,
          color: baseColor,
          secondaryColor: Colors.grey[700],
          title: "Smart Light",
          description: "Living Room",
          shape: NeumorphicShape.convex,
          icon: Icons.light,
          switchValue: true,
          depth: 0,
          iconDepth: 0,
          iconShape: NeumorphicShape.concave,
        ),
      ),
    );
  }
}
