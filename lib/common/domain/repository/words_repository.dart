
import 'package:dartz/dartz.dart';
import 'package:learnwordsapp/common/domain/model/complete.dart';
import 'package:learnwordsapp/common/domain/model/failure.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';

abstract class WordsRepository {

  Stream<List<Word>> observeWordsInList(WordsList list);

  Future<List<Word>> getWordsInList(WordsList list);

  Future<Option<Word>> getWordById(int wordId);

  Future<List<WordsList>> getLists();

  Future<void> fillDB(WordsList wordsList);

  Future<Either<Failure, Complete>> addWord(Word word);

  Future<Either<Failure, Complete>> editWord(Word word);


}