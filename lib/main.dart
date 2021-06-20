import 'package:flutter/material.dart';
import 'package:tambo/screens/login_page.dart';
import 'package:tambo/screens/main_screen.dart';
import 'package:tambo/screens/pay.dart';
import 'package:tambo/util/const.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tambo/generated/l10n.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
        initialRoute: 'login',
        routes: {
          'login'    : ( BuildContext context ) => LoginPage(),
          'registro' : ( BuildContext context ) => MainScreen(),
          'pay' : ( BuildContext context ) => Pay(),
        },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}