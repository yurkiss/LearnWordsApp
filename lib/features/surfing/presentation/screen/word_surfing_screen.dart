import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/features/common/values.dart';
import 'package:learnwordsapp/features/surfing/presentation/bloc/word_card_block.dart';
import 'package:learnwordsapp/features/surfing/presentation/model/next_word_event.dart';
import 'package:learnwordsapp/features/surfing/presentation/model/word_card_state.dart';
import 'package:learnwordsapp/features/surfing/presentation/widget/word_card.dart';

class WordSurfingScreen extends StatefulWidget {
  static const String routeKey = '/surfing';
  final String title;
  final WordsList list;

  const WordSurfingScreen({
    Key? key,
    required this.title,
    required this.list,
  }) : super(key: key);

  @override
  State<WordSurfingScreen> createState() => _WordSurfingScreenState();
}

class _WordSurfingScreenState extends State<WordSurfingScreen> {
  late final WordCardBloc _wordCardBloc;

  @override
  void initState() {
    super.initState();
    _wordCardBloc = getIt.get<WordCardBloc>();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return BlocProvider(
      create: (BuildContext context) => _wordCardBloc,
      child: SafeArea(
        child: Scaffold(
          body: Container(
              color: AppColors.backgroundColor,
              child: Column(
                children: [
                  _buildTopNav(context),
                  _getWordCardWidget(),
                  const SizedBox(height: 8.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _actionButtonText(
                          label: 'Back',
                          color: AppColors.primaryColor,
                          onPressed: () {},
                        ),
                        const Expanded(child: SizedBox()),
                        _actionButtonText(
                          label: 'Next',
                          color: AppColors.primaryColor,
                          onPressed: () => _wordCardBloc.add(
                            NextWordEvent(list: widget.list),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0)
                ],
              )),
        ),
      ),
    );
  }

  Widget _actionButtonText({
    required String label,
    Color? color,
    VoidCallback? onPressed,
  }) {
    var buttonStyle = TextButton.styleFrom(
        primary: color,
        padding: const EdgeInsets.all(24),
        textStyle: const TextStyle(fontSize: 16));

    return TextButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Text(label),
    );
  }

  Widget _getWordCardWidget() {
    return BlocBuilder<WordCardBloc, WordCardState>(builder: (context, state) {
      return state.word.fold(
        () => const Expanded(child: GreetingWidget()),
        (word) => Expanded(
          child: WordCardWidget(
            key: UniqueKey(),
            word: word.title,
            translation: word.translation,
          ),
        ),
      );
    });
  }

  Widget _buildTopNav(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.keyboard_backspace,
                color: AppColors.primaryColor,
              ),
              iconSize: 24.0,
              onPressed: () => Navigator.pop(context)),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 24.0,
          ),
        ],
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(15), bottom: Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's try to learn new words!",
            maxLines: 5,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: AppColors.cardTextColor,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              "Press the Next button.",
              maxLines: 5,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: AppColors.cardTextColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
