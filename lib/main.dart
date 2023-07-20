import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:do_it/src/core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);

  ThemeHelper().changeTheme('primary');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Mark Pro',
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Mark Pro',
              ),
          colorScheme: theme.colorScheme),
      title: 'project_maanagement_app',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.kOnboardingScreen,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
