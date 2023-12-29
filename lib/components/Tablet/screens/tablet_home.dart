import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/components/Tablet/widgets/tablet_navbar.dart';
import 'package:portfolio/components/Web/widgets/web-custom_painter.dart';
import 'package:portfolio/components/Web/widgets/web_navbar.dart';
import 'package:portfolio/components/Web/widgets/web_social_profile_buttons.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 242, 239, 239),
          child: Column(
            children: [
              Stack(
                children: [
                  CustomPaint(
                    painter: MyPainter(),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  const Tablet_Navbar(),
                  Positioned(
                    right: 20,
                    bottom: 0,
                    child: Image.asset('assets/images/profile2.png',
                        height: MediaQuery.of(context).size.height - 400),
                  ),
                  Positioned(
                    left: 150,
                    top: (MediaQuery.of(context).size.height - 550),
                    child: const Text(
                      'Hi, I am',
                      style: TextStyle(fontFamily: 'Raleway', fontSize: 35.0),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: (MediaQuery.of(context).size.height - 480),
                    child: const Text(
                      'Harsh Vardhan',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 58.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: (MediaQuery.of(context).size.height - 420),
                    child: const Text(
                      'Singh',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 58.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: (MediaQuery.of(context).size.height - 330),
                    child: const Text(
                      'Mobile Dev - Back-end Developer / Front-end Developer\n / DevOps',
                      style: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                  Positioned(
                    left: 115,
                    top: (MediaQuery.of(context).size.height - 200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var image in [
                          'github.png',
                          'twitter.png',
                          'linkedin.png',
                          'hashnode.png'
                        ])
                          Container(
                            margin: const EdgeInsets.all(12.0),
                            child: WebSocialProfileButtons(
                              imageUrl: 'assets/images/$image',
                            ),
                          ),
                      ],
                    ),
                  ),

                  // Container(
                  //   child: Row(
                  //     children: [
                  //       ElevatedButton.icon(
                  //           onPressed: () {},
                  //           icon: Image.asset(
                  //             'assets/images/github.png',
                  //             height: 25,
                  //           ),
                  //           label: Text(''))
                  //     ],
                  //   ),
                  // )
                ],
              ),
              Container(alignment: Alignment.topLeft, child: Text('data')),
              Text('data'),
              Text('data'),
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
