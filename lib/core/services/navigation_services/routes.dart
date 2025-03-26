import 'package:bloc_tutorial/core/services/navigation_services/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ui/views_barrel.dart';

class Routes {

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.testView:
        return _customRoute(widget:  const TestView(), /// passing arguments of object to next screen.
        );
      case RouteNames.loginView:
        return _customRoute(widget: const LoginView());
      default:
        return _customRoute(
          widget: const Scaffold(
            body: Center(
              child: Text(
                "Oops! The page you're looking for doesn't exist.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        );
    }
  }

  /// custom route
  static Route _customRoute({required Widget widget}) {
    return CupertinoPageRoute(builder: (_) => widget);
  }
}



