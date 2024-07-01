import 'package:coffee_shop/Models/size_option.dart';
import 'package:coffee_shop/utils/colors.dart';
import 'package:flutter/material.dart';

class Sizeoptionitem extends StatelessWidget {
  final int index;
  final SizeOption sizeOption;
  final bool selected;

  const Sizeoptionitem({
    super.key,
    required this.index,
    required this.sizeOption,
    required this.selected,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            color: selected ? secondColor : firstColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset("mages/coffee-cup.png",
              color: selected ? Colors.white : firstColor,
              width: 25 + (index * 5),
            ),
          ),
        ),

        const SizedBox(height: 10),

        Text(sizeOption.size,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          ),
        ),

        Text(sizeOption.quantity,
          style: const TextStyle(
            color: Colors.black38,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
