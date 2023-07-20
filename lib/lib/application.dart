import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/login.dart';
import 'package:flutter02/lib/widget/routes.dart';
import 'package:flutter02/main.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generator,
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
