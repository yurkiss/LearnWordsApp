import 'package:flutter/material.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/features/common/values.dart';
import 'package:learnwordsapp/features/common/widget/general_edit_field.dart';
import 'package:learnwordsapp/features/word_details/presentation/bloc/word_detail_bloc.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_event.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_state.dart';

class WordDetailScreen extends StatefulWidget {
  static const String routeKey = '/words/item';
  final WordsList wordsList;
  final int wordId;
  final DisplayMode displayMode;

  const WordDetailScreen._(
      {Key? key,
      required this.wordsList,
      required this.wordId,
      required this.displayMode})
      : super(key: key);

  factory WordDetailScreen({
    Key? key,
    required WordsList wordsList,
    int wordId = -1,
  }) =>
      WordDetailScreen._(
        key: key,
        wordsList: wordsList,
        wordId: wordId,
        displayMode: wordId > 0 ? DisplayMode.edit : DisplayMode.create,
      );

  @override
  State<StatefulWidget> createState() => WordDetailScreenState();
}

class WordDetailScreenState extends State<WordDetailScreen> {
  final wordTitleController = TextEditingController();
  final wordTranslationController = TextEditingController();
  late final WordDetailBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = getIt.get<WordDetailBloc>();
    if (widget.displayMode == DisplayMode.edit) {
      bloc.add(WordEvent.queryWordEvent(id: widget.wordId));
    }
    wordTitleController.addListener(() => setState(() {}));
    wordTranslationController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    wordTitleController.dispose();
    wordTranslationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.backgroundColor,
          child: Column(
            children: <Widget>[
              _buildTopNav(context),
              GeneralEditField(
                controller: wordTitleController,
                hintText: 'Enter a new word title',
                labelText: 'Word',
              ),
              GeneralEditField(
                controller: wordTranslationController,
                hintText: 'Enter the translation',
                labelText: 'Translation',
              ),
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
          IconButton(
              icon: const Icon(
                Icons.keyboard_backspace,
                color: AppColors.primaryColor,
              ),
              iconSize: 24,
              onPressed: () => Navigator.pop(context)),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add new word',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
              icon: const Icon(
                Icons.check,
                color: AppColors.primaryColor,
              ),
              iconSize: 24,
              tooltip: 'Save',
              onPressed: () {
                bloc.add(WordEvent.saveWordEvent(
                  title: wordTitleController.text,
                  translation: wordTranslationController.text,
                  list: widget.wordsList,
                ));

                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
