// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import '../../../constants/colors.dart';
import '../../../widgets/bottom_navigation_bar.dart';
import '../../../widgets/custom_container_button.dart';

class BuildLandingScreenMessage extends StatelessWidget {
  const BuildLandingScreenMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Text(
            "Your Appearance\n Shows Your Quality",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                color: black, fontWeight: FontWeight.w600, fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Change The Quality Of Your \n Appearance With LG-LOPINS Now!",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                color: grey400, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          const SizedBox(
            height: 35,
          ),
           BuildCustomContainerButton(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const CustomBottomNavigationBar())));
            },
            buttonText: "Sign Up with Email",
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
