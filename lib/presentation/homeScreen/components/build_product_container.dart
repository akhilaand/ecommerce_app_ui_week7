// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import '../../../constants/colors.dart';

class BuildProductContainer extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productOldPrice;
  final String productNewPrice;
  final int index;
  const BuildProductContainer({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productOldPrice,
    required this.productNewPrice,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: index.isEven ? 300 : 250,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    productImage,
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 2, bottom: 5),
              child: Text(
                productName,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              children: [
                Text(
                  productNewPrice,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    Text(
                      productOldPrice,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                          decorationColor: Colors.red,
                          fontSize: 20,
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.w400),
                    ),
                    Positioned(
                      top: 2,
                      left: 3,
                      child: SizedBox(
                          width: 42,
                          child: Image.asset("assets/images/strike.png")),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const Positioned(
          right: 10,
          top: 10,
          child: CircleAvatar(
            backgroundColor: black,
            child: Icon(
              Icons.favorite_outline_rounded,
              color: white,
            ),
          ),
        ),
      ],
    );
  }
}
