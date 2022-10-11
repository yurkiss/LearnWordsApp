import 'package:learnwordsapp/data/local/database/database.dart';

abstract class AppDatabase {

  Future<List<DbWordList>> getLists();
  Future<int> addList(DbWordListsCompanion list);
  Future<int> addWord(DbTranslatedWordsCompanion words);
  Future<void> addWords(List<DbTranslatedWordsCompanion> words);
  Stream<List<DbWordList>> watchLists();

  Future<List<DbTranslatedWord>> getWordsInList(int listId);

  Future<void> dispose();
}
