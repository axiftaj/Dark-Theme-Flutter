import 'package:dark_theme/MyHomePage.dart';
import 'package:dark_theme/ThemeChanger.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(new MyApp());

// This widget is the root of your application.
class MyApp extends StatefulWidget {
 // const MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Dark Theme Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.orange,
              buttonColor:  Colors.red ,
              // textTheme: TextTheme(
              //   headline1: TextStyle(color: Colors.red , fontSize: 10)
              // )
              // appBarTheme: AppBarTheme(
              //   color: Colors.blue
              // ),
              // scaffoldBackgroundColor: Colors.red
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
                buttonColor: Colors.blue ,
               // scaffoldBackgroundColor: Colors.blue ,
                // appBarTheme: AppBarTheme(
                //     color: Colors.red
                // ),
            ),
            home: MyHomePage(),
          );
        },
      ),
    );
  }
}

