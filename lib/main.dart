import 'package:book_shop/home_screen.dart';
import 'package:book_shop/pages/detail_screen.dart';
import 'package:book_shop/pages/more_page.dart';
import './providers/books.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'startup_screen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<Books>(create: (ctx) => Books()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'SegoeUI',
          ),
          home: stratupScreen(),
          routes: {
            HomeScreen.routeName: (ctx) => HomeScreen(),
            MorePage.routeName: (ctx) => MorePage(),
            DetailScreen.routeName: (ctx) => DetailScreen()
          },
        ));
  }
}
