import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wue_app/logic/cubit/cubit/auth_cubit.dart';
import 'package:wue_app/ui/home/main_page.dart';

import '../ui/auth/auth_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    // final GlobalKey<ScaffoldState> key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => BlocProvider<AuthCubit>(
                create: (context) => AuthCubit(), child: AuthPage()));
      case '/main':
        return MaterialPageRoute(
            builder: (context) => BlocProvider<AuthCubit>(
                create: (context) => AuthCubit(), child: MainPage()));
      default:
        return null;
    }
  }
}
