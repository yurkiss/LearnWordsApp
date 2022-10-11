import 'package:learnwordsapp/domain/model/words_list.dart';

abstract class ListsRepository {
  Stream<List<WordsList>> observeLists();

  Future<int> addList(String title);
}
