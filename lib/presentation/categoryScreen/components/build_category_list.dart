// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import '../../../constants/colors.dart';
import '../../../data/category_list_data.dart';

class BuildCategoryList extends StatelessWidget {
  const BuildCategoryList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categoryList.length,
        itemBuilder: (ctxt, index) => buildCategoryContainer(index));
  }

  Padding buildCategoryContainer(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(categoryList[index].categoryImage),
                fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 150,
        width: size.width,
        child: Align(
          alignment: AlignmentDirectional.bottomStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryList[index].categoryName,
                  style: GoogleFonts.roboto(
                      color: white, fontSize: 20, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "${categoryList[index].categoryAvailableProducts} Product",
                  style: GoogleFonts.roboto(
                    color: white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
