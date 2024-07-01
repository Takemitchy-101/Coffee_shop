import 'package:coffee_shop/Models/Product_model.dart';
import 'package:coffee_shop/Models/size_option.dart';
import 'package:coffee_shop/utils/colors.dart';
import 'package:coffee_shop/widgets/Product%20Image.dart';
import 'package:coffee_shop/widgets/background.dart';
import 'package:coffee_shop/widgets/sizeOptionItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailscreen extends StatefulWidget {
  final Product product;
  const Detailscreen({super.key, required this.product});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  int selectedSize = 2;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: myAppBar(context),
      body: Stack(
        children: [
          const BackGround(),
          Positioned(
            // top: 10,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Hero(
                  tag: widget.product.name,
                  child: SizedBox(
                    width: size.width * 0.81,
                    height: size.height * 0.5,
                    child: ProductImage(product: widget.product),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        widget.product.name,
                        maxLines: 2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$${widget.product.price}0",
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                            color: firstColor,
                          ),
                        ),
                        const Text(
                          "Best Sale",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Size Options",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(sizeOpions.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSize = index;
                            });
                          },
                          child: Sizeoptionitem(
                            index: index, sizeOption: sizeOpions[index], selected: selectedSize == index ? true : false),
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
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
