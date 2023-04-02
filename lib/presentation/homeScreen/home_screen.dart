// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:cloth_app/constants/colors.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_textfiled.dart';
import 'components/product_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: const [
              CustomAppbarWidget(
                title: "LG-LOPINS",
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextField(
                hintText: "Search Product",
              ),
              SizedBox(
                height: 25,
              ),
              ProductListWidget()
            ],
          ),
        )
      ],
    );
  }
}
