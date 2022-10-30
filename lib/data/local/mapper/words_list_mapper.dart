import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/data/local/api/exported_models.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';

@injectable
class WordsListMapper {
  WordsList mapFrom(DbWordList from) =>
      WordsList(id: from.id, title: from.title ?? '');

  DbWordList mapTo(WordsList from) =>
      DbWordList(id: from.id, title: from.title);
}
