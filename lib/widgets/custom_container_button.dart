import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class BuildCustomContainerButton extends StatelessWidget {
  final String buttonText;
  const BuildCustomContainerButton({
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            color: black,
            borderRadius: const BorderRadius.all(Radius.circular(40))),
        child: Center(
            child: Text(
          buttonText,
          style: GoogleFonts.roboto(
              color: white, fontSize: 19, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
