import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';
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
      child: SafeArea(
        child: Scaffold(
          body: Container(
            color: AppColors.backgroundColor,
            child: Column(
              children: [
                _buildTopNav(context),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(child: BlocBuilder<WordsBloc, WordsListState>(
                  builder: (BuildContext context, WordsListState state) {
                    return state.lists.fold(() => const Text("No records."),
                        (List<Word> a) {
                      return a.isEmpty
                          ? const Text("No records.")
                          : _buildList2(context, a);
                    });
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildList2(BuildContext context, List<Word> lists) {
    return ListView.builder(
      key: const Key("WordsList"),
      itemCount: lists.length,
      itemBuilder: (context, index) {
        return ListTile(
          key: Key("ListNameItem$index"),
          tileColor: Colors.white,
          title: Text(lists[index].title),
          textColor: AppColors.primaryColor.shade900,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => WordDetailScreen(
                          wordsList: wordsList,
                          wordId: lists[index].id,
                        )));
          },
        );
      },
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
                    wordsList.title,
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
                Icons.add_sharp,
                color: AppColors.primaryColor,
              ),
              iconSize: 24,
              tooltip: 'Add new Word',
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => WordDetailScreen(
                            wordsList: wordsList,
                          )))),
        ],
      ),
    );
  }

  Widget _stubDataButton(BuildContext context) {
    return IconButton(
        onPressed: () {
          var bloc = getIt.get<ListsBloc>();
          bloc.add(ListsEvent.fillDB(wordsList: wordsList));
        },
        icon: const Icon(Icons.stadium_rounded));
  }
}
