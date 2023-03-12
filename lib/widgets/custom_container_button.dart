import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class BuildCustomContainerButton extends StatelessWidget {
  final String buttonText;
  final double height;
  final Color bgColor;
  final Color textColor;
  final double textSize;
  final bool isShadowRequired;
  const BuildCustomContainerButton({
    required this.buttonText,
    this.height=75,
    this.bgColor=black,
    this.textColor=white,
    this.textSize=19,
    this.isShadowRequired=true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: height,
        width: size.width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: isShadowRequired?Colors.grey.withOpacity(0.5):Colors.transparent,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(40))),
        child: Center(
            child: Text(
          buttonText,
          style: GoogleFonts.roboto(
              color: textColor, fontSize: textSize, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
