import 'package:flutter/material.dart';

class Web_Navbar extends StatefulWidget {
  const Web_Navbar({super.key});

  @override
  State<Web_Navbar> createState() => _Web_NavbarState();
}

class _Web_NavbarState extends State<Web_Navbar> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      child: Row(
        children: [
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width * 0.5,
            // color: Colors.red,
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
                MouseRegion(
                  onEnter: (_) => setState(() => _isHovered = true),
                  onExit: (_) => setState(() => _isHovered = false),
                  child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _isHovered ? Colors.grey : Colors.black,
                          shape: BeveledRectangleBorder()),
                      onPressed: () {},
                      child: const Text(
                        'Contact Me',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
