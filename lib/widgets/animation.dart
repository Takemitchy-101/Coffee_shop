import 'package:flutter/material.dart';

AnimatedContainer indicator(int index, int currProduct) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        width: 3,
        color: index == currProduct ? Colors.amber : Colors.transparent),
    ),
    padding: const EdgeInsets.all(10),

    child: Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: index == currProduct ? Colors.white  : Colors.white60, 
      ),
    ),

  );
}
