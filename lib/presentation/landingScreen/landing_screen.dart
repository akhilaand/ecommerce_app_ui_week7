// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import 'package:cloth_app/constants/colors.dart';
import 'components/build_gradient_container.dart';
import 'components/build_landing_screen_message.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      color: const Color(0xff4a81af),
      child: SafeArea(
        child: Stack(
          children: [
            buildBackgroundContainer(size),
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "LG-LOPINS",
                  style: GoogleFonts.roboto(
                      color: white, fontWeight: FontWeight.w700, fontSize: 30),
                ),
              ),
            ),
            const BuildLandingScreenMessage()
          ],
        ),
      ),
    ));
  }

  Container buildBackgroundContainer(Size size) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/banner.jpg"),
            fit: BoxFit.fitHeight),
        color: Colors.white,
      ),
      height: size.height,
      child: BuildGradientedContainer(size: size),
    );
  }
}
