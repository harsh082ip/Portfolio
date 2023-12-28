import 'package:flutter/material.dart';
import 'package:portfolio/components/Web/web_home.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return WebHome();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {}

          return Container();
        },
      ),
    );
  }
}
