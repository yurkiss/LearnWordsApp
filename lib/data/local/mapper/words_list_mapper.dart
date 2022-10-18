import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/data/local/api/exported_models.dart';
import 'package:learnwordsapp/domain/model/words_list.dart';

@injectable
class WordsListMapper {
  WordsList mapFrom(DbWordList from) =>
      WordsList(id: from.id, title: from.title ?? 'no title');

  DbWordList mapTo(WordsList from) =>
      DbWordList(id: from.id, title: from.title);
}
