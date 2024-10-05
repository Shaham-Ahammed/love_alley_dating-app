import 'package:flutter/material.dart';
import 'package:love_ally/utils/constants/mediaquery.dart';

EdgeInsets commonScreenPadding(BuildContext context) {
  return EdgeInsets.only(
      bottom: MediaQuery.of(context).viewInsets.bottom,
      left: mediaquerywidth(0.05, context),
      right: mediaquerywidth(0.05, context));
}
