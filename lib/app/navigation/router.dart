import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthscape/views/auth/launch.dart';
import 'package:healthscape/views/auth/onboard.dart';
import 'package:healthscape/views/auth/payment.dart';
import 'package:healthscape/views/auth/signin.dart';
import 'package:healthscape/views/auth/signup.dart';
import 'package:healthscape/views/nav/fixed_slot.dart';
import 'package:healthscape/views/nav/nav_bar.dart';
import 'package:healthscape/views/nav/slots.dart';
import '../../views/auth/splash.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return getPageRoute(
          settings: settings,
          view: const Splash(),
        );
      case onboard:
        return getPageRoute(
          settings: settings,
          view: const OnboardingScreen(),
        );
      case launch:
        return getPageRoute(
          settings: settings,
          view: const LaunchScreen(),
        );
      case signin:
        return getPageRoute(
          settings: settings,
          view: const SignInWidget(),
        );
      case slots:
        return getPageRoute(
          settings: settings,
          view: const Slots(),
        );
      case fixedslot:
        String name = settings.arguments as String;
        return getPageRoute(
          settings: settings,
          view: Fixed(name: name),
        );
      case navBar:
        return getPageRoute(
          settings: settings,
          view: const NavBarPage(),
        );
      case signup:
        bool signIn = settings.arguments as bool;
        bool signUp = settings.arguments as bool;

        return getPageRoute(
          settings: settings,
          view: SignUp(
            signIn: signIn,
            signUp: signUp,
          ),
        );
      case payment:
        return getPageRoute(
          settings: settings,
          view: const Payment(),
        );

      default:
        return getPageRoute(
          settings: settings,
          view: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static PageRoute<dynamic> getPageRoute({
    required RouteSettings settings,
    required Widget view,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(settings: settings, builder: (_) => view)
        : MaterialPageRoute(settings: settings, builder: (_) => view);
  }
}
