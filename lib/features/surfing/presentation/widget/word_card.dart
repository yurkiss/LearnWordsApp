import 'package:flutter/material.dart';

class WordCardWidget extends StatelessWidget {
  const WordCardWidget({Key? key, required this.word, required this.translation}) : super(key: key);

  final String word;
  final String translation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.deepOrange[200],
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15), bottom: Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            word,
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            translation,
            style: Theme.of(context).textTheme.headline5,
          ),

        ],
      ),
    );
  }
}
