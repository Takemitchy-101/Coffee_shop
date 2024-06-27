import 'package:coffee_shop/Models/Product_model.dart';
import 'package:coffee_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailscreen extends StatelessWidget {
  final Product product;
  const Detailscreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: Stack(
        children: [
          // CoffeeBean(),
        ],
      ),
    );
  }

  AppBar myAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
          child: const Icon(Icons.arrow_back),
      ),
      title: Text(
        "Detail",
        style: GoogleFonts.lobsterTwo(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        Center(
          child: Stack(
            children: [
             const Padding(
                padding: EdgeInsets.only(right:8.0),
                child:  Icon(
                  Icons.shopping_cart_checkout,
                  color: Colors.amber,
                ),
              ),
              Positioned(
                  right: 10,
                  top: 0,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: firstColor,
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
