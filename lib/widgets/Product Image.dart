import 'package:coffee_shop/Models/Product_model.dart';
import 'package:coffee_shop/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final Product product;
  const ProductImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrain) {
       return SizedBox(
        height: constrain.maxWidth * 1.25,
        width: constrain.maxWidth,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: constrain.maxWidth * 0.9,
              width: constrain.maxWidth,
              decoration: const BoxDecoration(
                  color: thirdColor, shape: BoxShape.circle),
            ),
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(constrain.maxWidth * 0.45),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                      bottom: -30,
                      width: constrain.maxWidth * 0.9,
                      height: constrain.maxWidth * 1.5,
                      child: Image.asset(
                        "images/${product.image}",
                        fit: BoxFit.contain,
                      )),
                ],
              ),
            )
          ],
        ),
      );
     },
    );
  }
}
