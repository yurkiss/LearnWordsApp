import 'package:flutter/material.dart';
import 'package:learnwordsapp/features/common/values.dart';
import 'package:learnwordsapp/features/lists/presentation/screen/lists_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeKey = '/';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.backgroundColor,
          child: Column(
            children: [
              _buildTopNav(context),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                  child: Stack(
                fit: StackFit.expand,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/brain.png",
                            fit: BoxFit.fitHeight, height: 128),
                        const SizedBox(height: 12),
                        Text(
                          "Greeting",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: AppColors.primaryColor),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Let's try to learn new words!",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopNav(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 32,
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/dictionary2.png",
                      fit: BoxFit.fitHeight, height: 32),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'WordsApp',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
              icon: const Icon(
                Icons.list_alt,
                color: AppColors.primaryColor,
              ),
              iconSize: 24,
              onPressed: () =>
                  Navigator.pushNamed(context, ListsScreen.routeKey)),
        ],
      ),
    );
  }
}
