import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

import 'config/router/app_router.dart';


Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser()
      ),
    );
  }
}