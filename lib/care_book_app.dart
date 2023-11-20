import 'package:care_book/core/routing/app_router.dart';
import 'package:care_book/core/routing/routes.dart';
import 'package:care_book/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CareBookApp extends StatelessWidget {
  final AppRouter appRouter;
  const CareBookApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CareBook',
        theme: ThemeData(
          primaryColor: ColorsManager.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoutes,
      ),
    );
  }
}
