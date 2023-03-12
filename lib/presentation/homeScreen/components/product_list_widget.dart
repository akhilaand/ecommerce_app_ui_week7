import 'package:cloth_app/constants/colors.dart';
import 'package:cloth_app/data/product_list_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/custom_container_button.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'build_product_container.dart';

class ProductListWidget extends StatefulWidget {
  const ProductListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  bool isTrending = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      buildCategoryButtons(),
      const SizedBox(
        height: 15,
      ),
      StaggeredGridView.countBuilder(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        itemCount: productList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => BuildProductContainer(
          productName: productList[index].productName,
          productImage: productList[index].productImage,
          index: index,
          productNewPrice: productList[index].productPrice,
          productOldPrice: productList[index].productOldPrice,
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 4.2 : 3.5),
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 10.0,
      )
    ]);
  }

  Row buildCategoryButtons() {
    return Row(
      children: [
        Expanded(
            child: InkWell(
                onTap: () {
                  setState(() {
                    isTrending = true;
                  });
                },
                child: BuildCustomContainerButton(
                  buttonText: "Trending",
                  height: 55,
                  bgColor: isTrending ? black : pink100.withOpacity(0.1),
                  isShadowRequired: false,
                  textColor: isTrending ? white : black,
                  textSize: 15,
                ))),
        Expanded(
            child: InkWell(
                onTap: () {
                  setState(() {
                    isTrending = false;
                  });
                },
                child: BuildCustomContainerButton(
                  buttonText: "Clothing",
                  height: 55,
                  bgColor: isTrending ? pink100.withOpacity(0.1) : black,
                  textColor: isTrending ? black : white,
                  isShadowRequired: false,
                  textSize: 17,
                ))),
      ],
    );
  }
}
