import 'package:learnwordsapp/data/local/database/database.dart';

abstract class AppDatabase {

  Future<List<DbWordList>> getLists();
  Future<int> addList(DbWordListsCompanion list);
  Stream<List<DbWordList>> watchLists();

  Future<List<DbTranslatedWord>> getWordsInList(int listId);

  Future<void> dispose();
}
