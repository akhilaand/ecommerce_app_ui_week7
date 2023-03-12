import 'package:cloth_app/widgets/custom_container_button.dart';
import 'package:flutter/material.dart';

import 'components/custom_appbar.dart';
import 'components/custom_textfiled.dart';
import 'components/product_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: const [
                CustomAppbarWidget(),
                SizedBox(
                  height: 25,
                ),
                CustomTextField(),
                SizedBox(
                  height: 25,
                ),
                ProductListWidget()
              ],
            ),
          )
        ],
      )),
    );
  }
}


