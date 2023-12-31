import 'package:flutter/material.dart';
import 'package:portfolio/components/Mobile/screens/mobile_home.dart';
import 'package:portfolio/components/Tablet/screens/tablet_home.dart';
import 'package:portfolio/components/Web/screens/web_home.dart';
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
            return const WebHome();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const TabletHome();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return MobileHome();
          }

          return Container();
        },
      ),
    );
  }
}
