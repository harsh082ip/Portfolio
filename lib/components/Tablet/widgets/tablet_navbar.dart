import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tablet_Navbar extends StatefulWidget {
  const Tablet_Navbar({super.key});

  @override
  State<Tablet_Navbar> createState() => _Tablet_NavbarState();
}

class _Tablet_NavbarState extends State<Tablet_Navbar> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 40,
      child: Row(
        children: [
          Container(
            // height: 20,
            width: MediaQuery.of(context).size.width * 0.5,
            // color: Colors.red,
            child: Row(
              children: [
                MouseRegion(
                  onEnter: (_) => setState(() => _isHovered = true),
                  onExit: (_) => setState(() => _isHovered = false),
                  child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _isHovered ? Colors.grey : Colors.white,
                          shape: const BeveledRectangleBorder()),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/suitcase.png',
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            'Hire Me',
                            style:
                                TextStyle(color: Colors.black, fontSize: 25.0),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'About Me',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Skils',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Projects',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
