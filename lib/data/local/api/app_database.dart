import 'package:dartz/dartz.dart';
import 'package:learnwordsapp/data/local/database/database.dart';

abstract class AppDatabase {

  // Lists
  Future<List<DbWordList>> getLists();
  Future<int> addList(DbWordListsCompanion list);
  Stream<List<DbWordList>> watchLists();

  // Words
  Future<int> addWord(DbTranslatedWordsCompanion words);
  Future<void> addWords(List<DbTranslatedWordsCompanion> words);
  Future<List<DbTranslatedWord>> getWordsInList(DbWordList list);
  Future<Option<DbTranslatedWord>> getWordById(int wordId);
  Stream<List<DbTranslatedWord>> watchWordsInList(DbWordList list);


  Future<void> dispose();
}
