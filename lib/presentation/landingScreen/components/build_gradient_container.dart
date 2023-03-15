// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:cloth_app/constants/colors.dart';

class BuildGradientedContainer extends StatelessWidget {
  const BuildGradientedContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      foregroundDecoration: const BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          colors: [
            transparent,
            white70,
            white,
            white,
          ],
          stops: [0.1, 0.5, 0.7, 1],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
    );
  }
}
