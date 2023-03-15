// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:cloth_app/widgets/custom_appbar.dart';
import 'package:cloth_app/widgets/custom_textfiled.dart';
import 'components/build_category_list.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                const CustomAppbarWidget(
                  title: "Category",
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomTextField(
                  hintText: "Search Product",
                ),
                const SizedBox(
                  height: 25,
                ),
                BuildCategoryList(size: size)
              ],
            ),
          )
        ],
      )),
    );
  }
}
