import 'package:coffee_shop/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: const Stack(
        children: [
          Positioned(
            top: 30,
            left: 40,
            child: Text(
              "Smooth Out\nYour Everyday", 
              style: TextStyle(
                fontWeight: FontWeight.w900, 
                fontSize: 35
                ),
              ),
            ),
          ],
        ),

      );
  }

  AppBar myAppBar() {
    return AppBar(
      title: Row(
        children: [
            Image.asset("images/coffee-cup.png",
            height: 30,
            color: Colors.amber,
            ),
            const SizedBox(width: 10),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("latte",
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

      actions:  [
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
        const SizedBox(width: 15,),
       ],
      );
  }
}