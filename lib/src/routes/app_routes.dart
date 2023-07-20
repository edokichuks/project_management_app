import 'package:flutter/cupertino.dart';
import 'package:project_management_app/src/routes/routes_exports.dart';

class AppRoutes {
  const AppRoutes._();

  static const kCreateAcc = 'create_acc_screen';
  static const kOnboardingScreen = 'onoboarding_screen';
  static const kLoginScreen = 'login_screen';
  static const kDashboard = 'dashboard_screen';
  static const kTaskScreen = 'task_screen';
  static const kCreateProjectScreen = 'create_project_screen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kOnboardingScreen:
        return CupertinoPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case kCreateAcc:
        return CupertinoPageRoute(
          builder: (context) => CreateAccount(),
        );
      case kLoginScreen:
        return CupertinoPageRoute(
          builder: (context) => LoginScreen(),
        );
      case kDashboard:
        return CupertinoPageRoute(
          builder: (context) => const Dashboard(),
        );

      case kCreateProjectScreen:
        return CupertinoPageRoute(
          builder: (context) => CreateProjectScreen(),
        );

      case kTaskScreen:
        return CupertinoPageRoute(
          builder: (context) => TaskScreen(),
        );
      default:
        throw UnimplementedError('Route not found');
    }
  }
}
