import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none),
          prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: black,
              )),
          filled: true,
          hintStyle: const TextStyle(
              color: grey400, fontWeight: FontWeight.w300, fontSize: 18),
          hintText: "Search Product",
          fillColor: pink100.withOpacity(0.1)),
    );
  }
}
