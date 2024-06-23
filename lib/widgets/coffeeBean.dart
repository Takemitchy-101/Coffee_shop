import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeBean extends StatelessWidget {
  final double? top, bottom, left, right, degree;
  const CoffeeBean({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.degree,
    });

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Transform.rotate(
        angle: degree!* pi /190,
        child: SvgPicture.asset("images/coffee-bean.svg", width: 150,),
        ),
        
    );
  }
}