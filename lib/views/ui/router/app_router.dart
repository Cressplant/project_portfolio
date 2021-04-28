import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/models/project.dart';
import 'package:project_portfolio/views/ui/screens/cv_pdf_screen.dart';
import 'package:project_portfolio/views/ui/screens/error_screen.dart';
import 'package:project_portfolio/views/ui/screens/navigation_screen.dart';
import 'package:project_portfolio/views/ui/screens/project_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case NavigationScreen.id:
        return MaterialPageRoute(settings: routeSettings, builder: (newContext) => NavigationScreen());

      case ProjectScreen.id:
        return MaterialPageRoute(settings: routeSettings, builder: (newContext) => ProjectScreen(routeSettings.arguments as Project));

      case CVPDFScreen.id:
        return MaterialPageRoute(settings: routeSettings, builder: (newContext) => CVPDFScreen());

      default:
        return MaterialPageRoute(settings: routeSettings, builder: (newContext) => ErrorScreen());
    }
  }
}
