import 'package:coffee_shop/Models/Product_model.dart';
import 'package:coffee_shop/utils/colors.dart';
import 'package:coffee_shop/widgets/background.dart';
import 'package:coffee_shop/widgets/category_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentcategory = 0;
  int currentProduct = 0;
  PageController? controller;

  @override
  Widget build(BuildContext context) {
    // List<Product>dataProducts = products.where()
    return Scaffold(
      appBar: myAppBar(),
      body: Stack(
        children: [
          const BackGround(),
          const Positioned(
            top: 30,
            left: 40,
            child: Text(
              "Smooth Out\nYour Everyday",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35),
            ),
          ),
          Positioned(
              top: 120,
              child: ClipPath(
                clipper: Clip(),
                child: Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  color: firstColor,
                  child: Row(
                    children: List.generate(
                      categories.length,
                      (index) => Container(
                        height: 190,
                        width: 97,
                        color: currentcategory == index
                            ? Colors.amber
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 125,
              child: ClipPath(
                clipper: Clip(),
                child: Container(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  color: firstColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(categories.length, (index) {
                      int decrease = 0;
                      int max = 1;
                      int bottomPadding = 1;

                      for (var i = 0; i < categories.length; i++) {
                        bottomPadding =
                            index > max ? index - decrease++ : index;
                      }

                      return GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: bottomPadding.abs() * 75),
                          child: CategoryItem(category: categories[index]),
                        ),
                      );
                    }),
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: Clip(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.58,
                width: MediaQuery.of(context).size.width,
                color: secondColor,
              ),
            ),
          ),
          Positioned(
              child: ClipPath(
            clipper: Clip(),
            child: Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(itemBuilder: (context, index) {
                  
                  return GestureDetector(
                     onTap: () {},
                     child: Padding(padding: EdgeInsets.only()
                     
                     child: Transform.rotate(angle: angle),
                     ),
                  );
                },
              ),
            ),
          ))
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            "images/coffee-cup.png",
            height: 30,
            color: Colors.amber,
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "latte",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "space",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Center(
          child: Stack(
            children: [
              const Icon(
                Icons.shopping_cart,
                color: Colors.amber,
              ),
              Positioned(
                right: 3,
                top: 0,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: firstColor,
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}

class Clip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 100);
    path.quadraticBezierTo(size.width / 2, -40, 0, 100);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
