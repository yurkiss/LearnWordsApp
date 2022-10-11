import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/features/list_item_details/presentation/screen/list_item_detail_screen.dart';
import 'package:learnwordsapp/features/lists/presentation/bloc/lists_bloc.dart';
import 'package:learnwordsapp/features/lists/presentation/model/lists_state.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({Key? key}) : super(key: key);

  static const String routeKey = '/lists';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt.get<ListsBloc>(),
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Lists"),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Expanded(child: BlocBuilder<ListsBloc, ListsState>(
              builder: (BuildContext context, ListsState state) {
                return state.lists.fold(() => const Text("No records."),
                    (List<WordsList> a) => _buildList(context, a));
              },
            ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            Navigator.pushNamed(context, ListsItemDetailScreen.routeKey)
          },
          tooltip: 'Add new List',
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, List<WordsList> lists) {
    return ListView.builder(
      key: const Key("WordsListsList"),
      itemCount: lists.length,
      itemBuilder: (context, index) {
        return Padding(
            key: Key("ListNameItem$index"),
            padding: const EdgeInsets.all(2.0),
            child: Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Text(lists[index].title),
            ));
      },
    );
  }
}
