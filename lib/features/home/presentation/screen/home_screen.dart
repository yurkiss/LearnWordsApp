import 'package:flutter/material.dart';
import 'package:learnwordsapp/features/lists/presentation/screen/lists_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeKey = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Words App"),
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
                onPressed: () =>
                    {Navigator.pushNamed(context, ListsScreen.routeKey)},
                icon: const Icon(Icons.list_alt))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(25),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.purple.shade50,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(15), bottom: Radius.circular(15))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Greeting",
                style: Theme.of(context).textTheme.headline4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Text(
                  "Let's try to learn new words!",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ));
  }
}
