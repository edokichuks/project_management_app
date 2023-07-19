import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/routes/app_routes.dart';

import 'src/presentation/onboarding_screen/onboarding_screen.dart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);

  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Inter',
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Inter',
              ),
          colorScheme: theme.colorScheme),
      title: 'project_maanagement_app',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.kOnboardingScreen,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
