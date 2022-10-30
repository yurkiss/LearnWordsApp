import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';
import 'package:learnwordsapp/features/common/display_mode.dart';
import 'package:learnwordsapp/features/common/values.dart';
import 'package:learnwordsapp/features/common/widget/general_edit_field.dart';
import 'package:learnwordsapp/features/word_details/presentation/bloc/word_detail_bloc.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_event.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_state.dart';

class WordDetailScreen extends StatefulWidget {
  static const String routeKey = '/words/item';
  final WordsList wordsList;
  final int? wordId;
  final DisplayMode displayMode;

  const WordDetailScreen._({
    Key? key,
    required this.wordsList,
    this.wordId,
    required this.displayMode,
  }) : super(key: key);

  factory WordDetailScreen({
    Key? key,
    required WordsList wordsList,
    int? wordId,
  }) =>
      WordDetailScreen._(
        key: key,
        wordsList: wordsList,
        wordId: wordId,
        displayMode: wordId != null ? DisplayMode.edit : DisplayMode.create,
      );

  @override
  State<StatefulWidget> createState() => WordDetailScreenState();
}

class WordDetailScreenState extends State<WordDetailScreen> {
  final _wordTitleController = TextEditingController();
  final _wordTranslationController = TextEditingController();
  late final WordDetailBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getIt.get<WordDetailBloc>();
    if (widget.displayMode == DisplayMode.edit && widget.wordId != null) {
      _bloc.add(WordEvent.queryWordEvent(id: widget.wordId!));
    }
    _wordTitleController.addListener(() => setState(() {}));
    _wordTranslationController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _wordTitleController.dispose();
    _wordTranslationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<WordDetailBloc>(
          create: (context) => _bloc,
          child: BlocListener<WordDetailBloc, WordState>(
            listener: (context, state) {
              _wordTitleController.text = state.title;
              _wordTranslationController.text = state.translation;
            },
            child: Container(
              color: AppColors.backgroundColor,
              child: Column(
                children: <Widget>[
                  _buildTopNav(context),
                  GeneralEditField(
                    controller: _wordTitleController,
                    hintText: 'Enter a new word title',
                    labelText: 'Word',
                  ),
                  GeneralEditField(
                    controller: _wordTranslationController,
                    hintText: 'Enter the translation',
                    labelText: 'Translation',
                  ),
                ],
              ),
            ),
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
                    widget.displayMode == DisplayMode.create
                        ? 'Add new word'
                        : 'Edit word',
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
                _bloc.add(WordEvent.saveWordEvent(
                  id: widget.wordId,
                  title: _wordTitleController.text,
                  translation: _wordTranslationController.text,
                  list: widget.wordsList,
                ));

                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
