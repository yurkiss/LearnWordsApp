import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/data/local/api/app_database.dart';
import 'package:learnwordsapp/data/local/api/exported_models.dart';
import 'package:learnwordsapp/domain/model/word.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';
import 'package:learnwordsapp/domain/repository/words_repository.dart';

@Singleton(as: WordsRepository)
class WordsRepositoryImpl implements WordsRepository {
  final AppDatabase database;

  WordsRepositoryImpl({required this.database});

  @override
  Future<List<Word>> getWordsInList(WordsList list) async {
    final Iterable<DbTranslatedWord> words =
        await database.getWordsInList(list.id);

    return words
        .map((DbTranslatedWord e) => Word(
            title: e.wordTitle ?? "-", translation: e.wordTranslation ?? "-"))
        .toList(growable: false);
  }

  @override
  Future<List<WordsList>> getLists() async {
    final List<DbWordList> wordLists = await database.getLists();

    return wordLists
        .map(
            (DbWordList e) => WordsList(id: e.id, title: e.title ?? "Untitled"))
        .toList(growable: false);
  }
}
