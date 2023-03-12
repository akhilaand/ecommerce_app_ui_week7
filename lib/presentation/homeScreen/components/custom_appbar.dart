import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';
class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "LG-LOPINS",
          style: GoogleFonts.roboto(
              color: black,
              fontWeight: FontWeight.w600,
              fontSize: 27),
        ),
        Row(
          children: [
            CircleAvatar(
                backgroundColor: pink100.withOpacity(0.1),
                child: const Icon(
                  Icons.notifications_none_rounded,
                  color: black,
                )),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
                backgroundColor: pink100.withOpacity(0.1),
                backgroundImage: const AssetImage("assets/images/profile.jpg"))
          ],
        ),
      ],
    );
  }
}