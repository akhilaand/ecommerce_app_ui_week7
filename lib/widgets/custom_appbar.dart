// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import '../constants/colors.dart';

class CustomAppbarWidget extends StatelessWidget {
  final String title;
  const CustomAppbarWidget({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
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
