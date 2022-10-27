import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/data/local/api/exported_models.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';

@injectable
class WordMapper {
  Word mapFrom(DbTranslatedWord from) => Word(
      id: from.id,
      listId: from.wordList,
      title: from.wordTitle ?? "-",
      translation: from.wordTranslation ?? "-");

  DbTranslatedWord mapTo(Word from) => DbTranslatedWord(
      id: from.id,
      wordTitle: from.title,
      wordTranslation: from.translation,
      wordList: from.listId);
}
