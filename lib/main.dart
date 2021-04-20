import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/user_preferences.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/business_logic/utils/themes.dart';
import 'package:project_portfolio/views/ui/router/app_router.dart';
import 'package:project_portfolio/views/ui/screens/navigation_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => UserPreferences(), child: MaterialAppWithTheme(appRouter: AppRouter()));
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  final AppRouter appRouter;

  MaterialAppWithTheme({required this.appRouter});

  @override
  Widget build(BuildContext context) {
    bool _darkMode = Provider.of<UserPreferences>(context).darkMode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Globals.title,
      theme: Themes.getTheme(darkMode: _darkMode),
      home: NavigationScreen(),
    );
  }
}
