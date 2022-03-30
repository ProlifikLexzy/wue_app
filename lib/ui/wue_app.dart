import 'package:flutter/material.dart';
import '../route/app_router.dart';
import 'auth/auth_page.dart';

class WueApp extends StatelessWidget {
  WueApp({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WUE Movies',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
