import 'package:ckt_solver/inicio/inicio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// flutter build --build-number=x --build-name=y
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'inicio',
      routes: <String, WidgetBuilder>{
        'inicio': (BuildContext context) => InicioPage(),
        // "quiz1": (BuildContext context) => Quiz1Page(),
      },
      title: 'CktSolver 13000',
      theme: ThemeData(
        textSelectionColor: Colors.white,
        primaryColor: Color(0xff2595A6),
        primaryTextTheme: Typography(platform: TargetPlatform.iOS).white,
        textTheme: Typography(platform: TargetPlatform.iOS).white,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      // home: TabsPage(),
    );
  }
}
