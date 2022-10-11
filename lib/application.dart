import 'package:flutter/material.dart';
import 'package:learnwordsapp/features/home/presentation/screen/home_screen.dart';
import 'package:learnwordsapp/features/list_item_details/presentation/screen/list_item_detail_screen.dart';
import 'package:learnwordsapp/features/lists/presentation/screen/lists_screen.dart';
import 'package:learnwordsapp/features/surfing/presentation/screen/word_surfing_screen.dart';

class DebugApplication extends StatelessWidget {
  const DebugApplication({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      routes: {
        HomeScreen.routeKey: (context) => const HomeScreen(),
        WordSurfingScreen.routeKey: (context) => const WordSurfingScreen(title: 'Words'),
        ListsScreen.routeKey: (context) => const ListsScreen(),
        ListsItemDetailScreen.routeKey: (context) => const ListsItemDetailScreen(),
      },
      initialRoute: "/",

    );
  }
}


