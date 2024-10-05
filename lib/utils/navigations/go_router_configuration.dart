import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:love_ally/utils/navigations/go_router_constants.dart';
import 'package:love_ally/view/login_screen.dart';
import 'package:love_ally/view/splash_screen.dart';


class PageNavigations {
  GoRouter route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: GoRouterConstants.splash,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            child: SplashScreen(),
            transitionType: PageTransitionType.normal,
          );
        },
      ),
      GoRoute(
        path: '/login',
        name: GoRouterConstants.login,
        pageBuilder: (context, state) {
          final transitionType =
              state.extra as PageTransitionType? ?? PageTransitionType.normal;
          return buildPageWithTransition(
            context: context,
            state: state,
            child: LoginScreen(),
            transitionType: transitionType,
          );
        },
      ),
    ],
  );
}



enum PageTransitionType { fade, normal }

Page<dynamic> buildPageWithTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  PageTransitionType transitionType = PageTransitionType.normal,
}) {
  switch (transitionType) {
    case PageTransitionType.fade:
      return CustomTransitionPage(
        child: child,
        transitionDuration:
            const Duration(milliseconds: 600), 
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
    case PageTransitionType.normal:
    
    default:
      return MaterialPage(child: child);
  }
}