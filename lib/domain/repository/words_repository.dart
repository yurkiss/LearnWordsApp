
import 'package:dartz/dartz.dart';
import 'package:learnwordsapp/domain/model/word.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';

abstract class WordsRepository {

  Stream<List<Word>> observeWordsInList(WordsList list);

  Future<List<Word>> getWordsInList(WordsList list);

  Future<Option<Word>> getWordById(int wordId);

  Future<List<WordsList>> getLists();

  Future<void> fillDB(WordsList wordsList);

  Future<void> addWord(Word word);

}