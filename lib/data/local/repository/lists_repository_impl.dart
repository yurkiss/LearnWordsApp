import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/common/domain/model/complete.dart';
import 'package:learnwordsapp/common/domain/model/failure.dart';
import 'package:learnwordsapp/data/local/api/app_database.dart';
import 'package:learnwordsapp/data/local/api/exported_models.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';
import 'package:learnwordsapp/common/domain/repository/lists_repository.dart';
import 'package:learnwordsapp/data/local/mapper/words_list_mapper.dart';

@Singleton(as: ListsRepository)
class ListsRepositoryImpl implements ListsRepository {
  final AppDatabase _database;
  final WordsListMapper _wordsListMapper;

  ListsRepositoryImpl({
    required AppDatabase database,
    required WordsListMapper wordsListMapper,
  })  : _wordsListMapper = wordsListMapper,
        _database = database;

  @override
  Stream<List<WordsList>> observeLists() {
    return _database.watchLists().map((List<DbWordList> event) => event
        .map(
            (DbWordList e) => WordsList(id: e.id, title: e.title ?? "Untitled"))
        .toList());
  }

  @override
  Future<Either<Failure, Complete>> addList(WordsList list) {
    DbWordListsCompanion dbList = _wordsListMapper
        .mapTo(list)
        .toCompanion(true)
        .copyWith(id: const Value.absent());
    return _database.addList(dbList).then((value) => Either.cond(
          () => value > 0,
          () => const Complete('List successfully added.'),
          () => Failure(message: 'Fail to add new list $list'),
        ));
  }
}
