import 'package:flutter/material.dart';
import 'package:tatware_test/utilities/app_theme.dart';
import 'package:tatware_test/utilities/router/app_router.dart';
import 'package:tatware_test/utilities/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview Assignment',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appThemeLight,
      initialRoute: AppRoutes.startPageRoute,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
