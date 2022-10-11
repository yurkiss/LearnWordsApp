import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/data/local/api/app_database.dart';
import 'package:learnwordsapp/data/local/api/exported_models.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/domain/repository/lists_repository.dart';

@Singleton(as: ListsRepository)
class ListsRepositoryImpl implements ListsRepository {
  final AppDatabase database;

  ListsRepositoryImpl({required this.database});

  @override
  Stream<List<WordsList>> observeLists() {
    return database.watchLists().map((List<DbWordList> event) => event
        .map(
            (DbWordList e) => WordsList(id: e.id, title: e.title ?? "Untitled"))
        .toList());
  }

  @override
  Future<int> addList(String title) {
    return database.addList(DbWordListsCompanion(title: Value(title)));
  }
}
