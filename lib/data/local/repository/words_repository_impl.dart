import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/data/local/api/app_database.dart';
import 'package:learnwordsapp/data/local/api/exported_models.dart';
import 'package:learnwordsapp/data/local/mapper/word_mapper.dart';
import 'package:learnwordsapp/data/local/mapper/words_list_mapper.dart';
import 'package:learnwordsapp/domain/model/word.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/domain/repository/words_repository.dart';

@Singleton(as: WordsRepository)
class WordsRepositoryImpl implements WordsRepository {
  final AppDatabase database;
  final WordsListMapper wordsListMapper;
  final WordMapper wordMapper;

  WordsRepositoryImpl(
      {required this.database,
      required this.wordsListMapper,
      required this.wordMapper});

  @override
  Stream<List<Word>> observeWordsInList(WordsList list) {
    return database
        .watchWordsInList(wordsListMapper.mapTo(list))
        .map((words) => words.map(wordMapper.mapFrom).toList(growable: false));
  }

  @override
  Future<List<Word>> getWordsInList(WordsList list) async {
    final Iterable<DbTranslatedWord> words =
        await database.getWordsInList(wordsListMapper.mapTo(list));

    return words.map(wordMapper.mapFrom).toList(growable: false);
  }

  @override
  Future<Option<Word>> getWordById(int wordId) async {
    Option<DbTranslatedWord> wordById = await database.getWordById(wordId);
    return wordById.map(wordMapper.mapFrom);
  }


  @override
  Future<List<WordsList>> getLists() async {
    final List<DbWordList> wordLists = await database.getLists();
    return wordLists.map(wordsListMapper.mapFrom).toList(growable: false);
  }

  @override
  Future<void> addWord(Word word) {
    DbTranslatedWordsCompanion wordCompanion = wordMapper
        .mapTo(word)
        .toCompanion(true)
        .copyWith(id: const Value.absent());
    return database.addWord(wordCompanion);
  }

  @override
  Future<void> fillDB(WordsList wordsList) async {
    return database.addWords([
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
