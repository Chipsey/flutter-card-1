// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class CustomCards extends StatefulWidget {
  final double size;
  final Color? color;
  final double? depth;
  final Color? secondaryColor;
  final Color? iconColor;
  final Color? activeSwitchColor;
  final Color? iconBackgroundColor;
  final bool switchValue;
  final NeumorphicShape? iconShape;
  final NeumorphicShape? shape;
  final double? iconDepth;
  final IconData icon;
  final double? borderRadius;
  final double? iconSize;
  final String title;
  final String description;

  const CustomCards({
    super.key,
    required this.size,
    required this.title,
    required this.description,
    required this.secondaryColor,
    required this.color,
    required this.icon,
    required this.switchValue,
    this.iconSize,
    this.borderRadius,
    this.depth,
    this.iconShape,
    this.shape,
    this.iconColor,
    this.activeSwitchColor,
    this.iconBackgroundColor,
    this.iconDepth,
  });

  @override
  State<CustomCards> createState() => _CustomCardsState();
}

class _CustomCardsState extends State<CustomCards> {
  @override
  Widget build(BuildContext context) {
    // Use the provided color or default to baseColor
    final Color baseColor = widget.color ?? Colors.white;
    final Color? iconColor =
        widget.iconColor ?? widget.secondaryColor ?? Colors.grey[700];
    final Color? iconBackgroundColor =
        widget.iconBackgroundColor ?? widget.color;
    final Color? activeSwitchColor =
        widget.activeSwitchColor ?? widget.secondaryColor ?? Colors.green[300];
    final double iconSize = widget.iconSize ?? widget.size * 0.8;

    return Neumorphic(
      style: NeumorphicStyle(
        color: baseColor,
        depth: widget.depth ?? 2,
        shape: widget.shape ?? NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(widget.borderRadius ?? widget.size),
        ),
      ),
      child: Container(
        width: widget.size * 6,
        height: widget.size * 4.5,
        decoration: BoxDecoration(
          color: baseColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(widget.size * 0.7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: widget.iconDepth ?? -5,
                      shape: widget.iconShape ?? NeumorphicShape.flat,
                      surfaceIntensity: 0.5,
                    ),
                    child: Container(
                      width: widget.size * 1.3,
                      height: widget.size * 1.3,
                      decoration: BoxDecoration(
                        color: iconBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          widget.icon,
                          color: iconColor,
                          size: iconSize,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widget.size,
                    child: NeumorphicSwitch(
                      value: widget.switchValue,
                      style: NeumorphicSwitchStyle(
                        trackDepth: -2,
                        inactiveTrackColor: baseColor,
                        inactiveThumbColor: baseColor,
                        activeTrackColor: activeSwitchColor,
                        activeThumbColor: baseColor,
                        thumbDepth: 2,
                        thumbShape: NeumorphicShape.concave,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: widget.size * 0.3,
                  ),
                  Text(
                    widget.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: widget.size * 0.5,
                      fontWeight: FontWeight.bold,
                      color: widget.secondaryColor,
                    ),
                  ),
                  SizedBox(
                    height: widget.size * 0.1,
                  ),
                  Text(
                    widget.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: widget.size * 0.4,
                      color: widget.secondaryColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
