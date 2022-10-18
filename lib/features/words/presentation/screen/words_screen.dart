import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/domain/model/word.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/features/common/values.dart';
import 'package:learnwordsapp/features/lists/presentation/bloc/lists_bloc.dart';
import 'package:learnwordsapp/features/lists/presentation/model/lists_event.dart';
import 'package:learnwordsapp/features/word_details/presentation/screen/word_detail_screen.dart';
import 'package:learnwordsapp/features/words/presentation/bloc/words_bloc.dart';
import 'package:learnwordsapp/features/words/presentation/model/words_list_state.dart';

class WordsScreen extends StatelessWidget {
  final WordsList wordsList;
  static const String routeKey = '/words';

  const WordsScreen({Key? key, required this.wordsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt.get<WordsBloc>(param1: wordsList),
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(wordsList.title),
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
                onPressed: () {
                  var bloc = getIt.get<ListsBloc>();
                  bloc.add(ListsEvent.fillDB(wordsList: wordsList));
                },
                icon: const Icon(Icons.stadium_rounded))
          ],
        ),
        body: Column(
          children: [
            Expanded(child: BlocBuilder<WordsBloc, WordsListState>(
              builder: (BuildContext context, WordsListState state) {
                return state.lists.fold(() => const Text("No records."),
                    (List<Word> a) => _buildList(context, a));
              },
            ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => WordDetailScreen(
                        wordsList: wordsList,
                      ))),
          tooltip: 'Add new Word',
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, List<Word> lists) {
    return ListView.builder(
      key: const Key("WordsList"),
      itemCount: lists.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => WordDetailScreen(
                          wordsList: wordsList,
                          wordId: lists[index].id,
                        )));
          },
          child: Padding(
              key: Key("ListNameItem$index"),
              padding: const EdgeInsets.all(2.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: ListItemValues.horizontalPadding,
                    vertical: ListItemValues.verticalPadding + 8.0),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(lists[index].title),
              )),
        );
      },
    );
  }
}
