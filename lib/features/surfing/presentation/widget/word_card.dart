import 'package:flutter/material.dart';
import 'package:learnwordsapp/features/common/values.dart';

class WordCardWidget extends StatefulWidget {
  const WordCardWidget(
      {Key? key,
      required this.word,
      required this.translation,
      this.widthRatio = 0.9})
      : super(key: key);

  final String word;
  final String translation;
  final double widthRatio;

  @override
  State<WordCardWidget> createState() => _WordCardWidgetState();
}

class _WordCardWidgetState extends State<WordCardWidget> {
  bool flipped = false;


  @override
  void initState() {
    super.initState();
    setState(() {
      flipped = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          flipped = flipped ? false : true;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        width: MediaQuery.of(context).size.width * widget.widthRatio,
        decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(15), bottom: Radius.circular(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                widget.word,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: AppColors.cardTextColor),
              ),
            ),
            if (flipped)
              FittedBox(
                child: Text(
                  widget.translation,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: AppColors.cardTextColor),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
