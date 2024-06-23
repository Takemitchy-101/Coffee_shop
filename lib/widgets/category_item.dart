import 'package:coffee_shop/Models/Product_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Container(
          height: 75,
          width: 75,

          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          
          child: Image.asset("images/${category.image}"),
        ),
        const SizedBox(height: 10,),

        Text(
          category.name.toUpperCase(),
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        )
      ],


    );
  }
}
