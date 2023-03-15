// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    required this.hintText,
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
          hintText: hintText,
          fillColor: pink100.withOpacity(0.1)),
    );
  }
}
