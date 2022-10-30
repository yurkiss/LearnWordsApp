import 'package:dartz/dartz.dart';
import 'package:learnwordsapp/common/domain/model/complete.dart';
import 'package:learnwordsapp/common/domain/model/failure.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';

abstract class ListsRepository {
  Stream<List<WordsList>> observeLists();

  Future<Either<Failure, Complete>> addList(WordsList list);
}
