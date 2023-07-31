import 'package:flutter/material.dart';

class WelcomText extends StatelessWidget {
  const WelcomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Ammar, What Are You \nLooking For 👀',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
