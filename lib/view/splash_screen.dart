import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:love_ally/utils/constants/paths.dart';
import 'package:love_ally/utils/navigations/go_router_configuration.dart';
import 'package:love_ally/utils/navigations/go_router_constants.dart';
import 'package:love_ally/widgets/splash_screen/headings.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      context.pushNamed(
        GoRouterConstants.login,
        extra: PageTransitionType.fade,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.splashImage),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MainHeading(),
            SubHeading(),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
