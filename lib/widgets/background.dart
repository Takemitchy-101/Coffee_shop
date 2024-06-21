import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width,
      height: size.height,
      child: Stack(
        children: [

        ],
      ),
    );
  }
}


class CoffeeBean extends StatelessWidget {
  const CoffeeBean({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
