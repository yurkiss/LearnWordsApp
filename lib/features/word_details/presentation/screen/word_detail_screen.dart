import 'package:flutter/material.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/features/common/widget/general_edit_field.dart';
import 'package:learnwordsapp/features/word_details/presentation/bloc/word_detail_bloc.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_event.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_state.dart';

class WordDetailScreen extends StatefulWidget {
  static const String routeKey = '/words/item';
  final WordsList wordsList;
  final int wordId;
  final DisplayMode displayMode;

  const WordDetailScreen._({
    Key? key,
    required this.wordsList,
    required this.wordId,
    required this.displayMode
  }) : super(key: key);

  factory WordDetailScreen({
    Key? key,
    required WordsList wordsList,
    int wordId = -1,
  }) => WordDetailScreen._(
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
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Add new Word"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.add(WordEvent.saveWordEvent(
            title: wordTitleController.text,
            translation: wordTranslationController.text,
            list: widget.wordsList,
          ));

          Navigator.pop(context);
        },
        tooltip: 'Save',
        backgroundColor: Colors.purple,
        child: const Icon(Icons.check),
      ),
    );
  }
}
