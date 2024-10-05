
import 'package:flutter/material.dart';
import 'package:love_ally/utils/color_theme/colors.dart';
import 'package:love_ally/utils/constants/paths.dart';

class SubHeading extends StatelessWidget {
  const SubHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "love starts here",
      style: TextStyle(
          fontFamily: CustomFonts.splashSubText,
          fontSize: 18,
          fontStyle: FontStyle.italic,
          color: AppColors.whiteColor),
    );
  }
}

class MainHeading extends StatelessWidget {
  const MainHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "LOVE ALLY",
      style: TextStyle(
          fontFamily: CustomFonts.splashMainText,
          fontSize: 42,
          color: AppColors.whiteColor),
    );
  }
}
