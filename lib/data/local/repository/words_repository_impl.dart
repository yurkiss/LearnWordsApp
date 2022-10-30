import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/common/domain/model/complete.dart';
import 'package:learnwordsapp/common/domain/model/failure.dart';
import 'package:learnwordsapp/data/local/api/app_database.dart';
import 'package:learnwordsapp/data/local/api/exported_models.dart';
import 'package:learnwordsapp/data/local/mapper/word_mapper.dart';
import 'package:learnwordsapp/data/local/mapper/words_list_mapper.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';
import 'package:learnwordsapp/common/domain/repository/words_repository.dart';

@Singleton(as: WordsRepository)
class WordsRepositoryImpl implements WordsRepository {
  final AppDatabase _database;
  final WordsListMapper _wordsListMapper;
  final WordMapper _wordMapper;

  WordsRepositoryImpl({
    required AppDatabase database,
    required WordsListMapper wordsListMapper,
    required WordMapper wordMapper,
  })  : _wordsListMapper = wordsListMapper,
        _wordMapper = wordMapper,
        _database = database;

  @override
  Stream<List<Word>> observeWordsInList(WordsList list) {
    return _database
        .watchWordsInList(_wordsListMapper.mapTo(list))
        .map((words) => words.map(_wordMapper.mapFrom).toList(growable: false));
  }

  @override
  Future<List<Word>> getWordsInList(WordsList list) async {
    final Iterable<DbTranslatedWord> words =
        await _database.getWordsInList(_wordsListMapper.mapTo(list));

    return words.map(_wordMapper.mapFrom).toList(growable: false);
  }

  @override
  Future<Option<Word>> getWordById(int wordId) async {
    Option<DbTranslatedWord> wordById = await _database.getWordById(wordId);
    return wordById.map(_wordMapper.mapFrom);
  }

  @override
  Future<List<WordsList>> getLists() async {
    final List<DbWordList> wordLists = await _database.getLists();
    return wordLists.map(_wordsListMapper.mapFrom).toList(growable: false);
  }

  @override
  Future<Either<Failure, Complete>> addWord(Word word) {
    DbTranslatedWordsCompanion wordCompanion = _wordMapper
        .mapTo(word)
        .toCompanion(true)
        .copyWith(id: const Value.absent());
    return _database.addWord(wordCompanion).then((value) => Either.cond(
          () => value > 0,
          () => const Complete('Word successfully added.'),
          () => Failure(message: 'Fail to add new word $word'),
        ));
  }

  @override
  Future<Either<Failure, Complete>> editWord(Word word) {
    DbTranslatedWordsCompanion wordCompanion =
        _wordMapper.mapTo(word).toCompanion(true);
    return _database.editWord(wordCompanion).then((value) => Either.cond(
          () => value > 0,
          () => const Complete('Word successfully edited.'),
          () => Failure(message: 'Fail to add new word $word'),
        ));
  }

  @override
  Future<void> fillDB(WordsList wordsList) async {
    return _database.addWords([
      DbTranslatedWordsCompanion(
          wordTitle: const Value('Hallo'),
          wordTranslation: const Value('Hello'),
          wordList: Value(wordsList.id)),
      DbTranslatedWordsCompanion(
          wordTitle: const Value('Tschüs'),
          wordTranslation: const Value('Bye'),
          wordList: Value(wordsList.id)),
      DbTranslatedWordsCompanion(
          wordTitle: const Value('Entschuldigung'),
          wordTranslation: const Value('Excuse me'),
          wordList: Value(wordsList.id)),
    ]);
  }
}
