import 'package:learnwordsapp/common/domain/model/words_list.dart';

abstract class ListsRepository {
  Stream<List<WordsList>> observeLists();

  Future<int> addList(String title);
}
