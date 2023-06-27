import 'package:flutter/material.dart';

class MyCustomFabAnimator extends FloatingActionButtonAnimator {
  @override
  Offset getOffset({required Offset begin, required Offset end,required double progress}) {
    // Custom implementation of the animation offset
    // You can modify the animation behavior based on your requirements
    // This is just a sample implementation
    return Offset.lerp(begin, end, progress)!;
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    // Custom implementation of the rotation animation
    // You can modify the animation behavior based on your requirements
    // This is just a sample implementation
    return CurvedAnimation(parent: parent, curve: Curves.linear);
  }

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    // Custom implementation of the scaling animation
    // You can modify the animation behavior based on your requirements
    // This is just a sample implementation
    return CurvedAnimation(parent: parent, curve: Curves.linear);
  }
}