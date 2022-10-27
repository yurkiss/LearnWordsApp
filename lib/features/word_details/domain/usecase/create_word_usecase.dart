import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/common/domain/model/complete.dart';
import 'package:learnwordsapp/common/domain/model/failure.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';
import 'package:learnwordsapp/common/domain/repository/words_repository.dart';
import 'package:learnwordsapp/common/domain/usecase/usecases.dart';

part 'create_word_usecase.freezed.dart';

@injectable
class CreateWordUsecase
    extends AsyncUsecase<Either<Failure, Complete>, CreateWordParams> {
  final WordsRepository wordsRepository;

  const CreateWordUsecase(this.wordsRepository);

  @override
  Future<Either<Failure, Complete>> run({
    required CreateWordParams params,
  }) async {
    return params.when(
        create: (word) => wordsRepository.addWord(word));
  }
}

@freezed
class CreateWordParams extends UsecaseParams with _$CreateWordParams {
  const factory CreateWordParams.create({
    required Word word,
  }) = _CreateWordParams;
}
