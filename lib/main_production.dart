import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/dependency_injection/dependency_injection.dart';
import 'package:maser_project/core/theme/app_theme.dart';
import 'package:maser_project/routing/app_router.dart';
import 'package:maser_project/routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Getit
  setupDependencyInjecion();

  // For ScreenUtils bug with texts in release version
  await ScreenUtil.ensureScreenSize();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: SafeArea(
        child: MaterialApp(
          title: 'Doc App',
          themeMode: ThemeMode.system,
          theme: CustomAppTheme.lightTheme,
          darkTheme: CustomAppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.redirectScreen, // First route passed to generate
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
