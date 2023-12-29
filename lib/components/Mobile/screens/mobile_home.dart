import 'package:flutter/material.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.menu,
                size: 38.0,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      33.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/profile2.png'),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Opacity(
                    opacity: 0.55,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(350))),
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                Positioned(
                  left: 25.0,
                  bottom: MediaQuery.of(context).size.height * 0.21,
                  child: Text(
                    'Hi, I am',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 5),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: MediaQuery.of(context).size.height * 0.1,
                  child: Text(
                    'Harsh Vardhan Singh',
                    style: TextStyle(
                        fontFamily: 'UbuntuB',
                        fontSize: 35.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ],
            ),
            Text('data'),
            Text('data'),
            Text('data'),
          ],
        ),
      )),
    );
  }
}
