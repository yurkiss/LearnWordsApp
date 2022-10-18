import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwordsapp/features/common/values.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/features/list_item_details/presentation/screen/list_item_detail_screen.dart';
import 'package:learnwordsapp/features/lists/presentation/bloc/lists_bloc.dart';
import 'package:learnwordsapp/features/lists/presentation/model/lists_state.dart';
import 'package:learnwordsapp/features/surfing/presentation/screen/word_surfing_screen.dart';
import 'package:learnwordsapp/features/words/presentation/screen/words_screen.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({Key? key}) : super(key: key);

  static const String routeKey = '/lists';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt.get<ListsBloc>(),
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
                Expanded(child: BlocBuilder<ListsBloc, ListsState>(
                  builder: (BuildContext context, ListsState state) {
                    return state.lists.fold(() => const Text("No records."),
                        (List<WordsList> a) {
                      return a.isEmpty
                          ? const Text("No records.")
                          : _buildList(context, a);
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

  Widget _buildList(BuildContext context, List<WordsList> lists) {
    return ListView.builder(
      key: const Key("WordsListsList"),
      itemCount: lists.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WordSurfingScreen(
                          title: lists[index].title,
                        )));
          },
          child: Padding(
              key: Key("ListNameItem$index"),
              padding: const EdgeInsets.all(2.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: ListItemValues.horizontalPadding,
                    vertical: ListItemValues.verticalPadding),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: AppColors.primaryColor.shade900,
                      size: 24,
                    ),
                    const SizedBox(width: 8),
                    Expanded(child: Text(lists[index].title)),
                    IconButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WordsScreen(wordsList: lists[index])))
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 12.0,
                    )
                  ],
                ),
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
                    'Lists',
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
                Icons.add_sharp,
                color: AppColors.primaryColor,
              ),
              iconSize: 24,
              tooltip: 'Add new list',
              onPressed: () =>
                  Navigator.pushNamed(context, ListsItemDetailScreen.routeKey)),
        ],
      ),
    );
  }
}
