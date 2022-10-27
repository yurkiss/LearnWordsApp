import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/common/domain/model/complete.dart';
import 'package:learnwordsapp/common/domain/model/failure.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';
import 'package:learnwordsapp/common/domain/repository/words_repository.dart';
import 'package:learnwordsapp/common/domain/usecase/usecases.dart';

part 'edit_word_usecase.freezed.dart';

@injectable
class EditWordUsecase
    extends AsyncUsecase<Either<Failure, Complete>, EditWordParams> {
  final WordsRepository wordsRepository;

  const EditWordUsecase(this.wordsRepository);

  @override
  Future<Either<Failure, Complete>> run({
    required EditWordParams params,
  }) async {
    return params.when(
        create: (word) => wordsRepository.editWord(word));
  }
}

@freezed
class EditWordParams extends UsecaseParams with _$EditWordParams {
  const factory EditWordParams.create({
    required Word word,
  }) = _EditWordParams;
}
