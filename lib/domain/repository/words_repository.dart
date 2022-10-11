
import 'package:learnwordsapp/domain/model/word.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';

abstract class WordsRepository {

  Future<List<Word>> getWordsInList(WordsList list);

  Future<List<WordsList>> getLists();

  Future<void> fillDB();

}