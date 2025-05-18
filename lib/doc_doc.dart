import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDoc extends StatelessWidget {
  const DocDoc({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DocDoc',
        theme: AppTheme.lightTheme,
        onGenerateRoute: appRouter.generateRoute,
        // TODO: make initail route to onboarding screen
        initialRoute: Routes.homeScreen,
      ),
    );
  }
}
