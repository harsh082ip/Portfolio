import 'dart:developer';

import 'package:flutter/material.dart';

class WebSocialProfileButtons extends StatelessWidget {
  final String imageUrl;
  const WebSocialProfileButtons({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('button pressed');
      },
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0.0,
                      4.0), // Adjust the offset to control the shadow position
                  blurRadius:
                      8.0, // Adjust the blur radius to control the shadow intensity
                ),
              ],
            ),
            height: 48.0,
            width: 48.0,
          ),
          Positioned(
            top: 4,
            left: 5,
            child: Image.asset(
              imageUrl,

              height: 38.0,
              // height: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}
