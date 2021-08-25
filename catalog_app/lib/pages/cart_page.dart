import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  static Color darkBluishColor = Color(0xff403b58);
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff403b58),
        title: Center(
          child: Text(
            "cart",
          ),
        ),
      ),
    );
  }
}
