import 'package:flutter/material.dart';

class WordCardWidget extends StatelessWidget {
  const WordCardWidget({Key? key, required this.word, required this.translation}) : super(key: key);

  final String word;
  final String translation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15), bottom: Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              word,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          FittedBox(
            child: Text(
              translation,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),

        ],
      ),
    );
  }
}
