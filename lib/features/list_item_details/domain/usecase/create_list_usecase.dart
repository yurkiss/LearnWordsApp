import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/common/domain/model/complete.dart';
import 'package:learnwordsapp/common/domain/model/failure.dart';
import 'package:learnwordsapp/common/domain/model/words_list.dart';
import 'package:learnwordsapp/common/domain/repository/lists_repository.dart';
import 'package:learnwordsapp/common/domain/usecase/usecases.dart';

part 'create_list_usecase.freezed.dart';

@injectable
class CreateListUsecase
    extends AsyncUsecase<Either<Failure, Complete>, CreateListParams> {
  final ListsRepository _listsRepository;

  const CreateListUsecase(ListsRepository listsRepository)
      : _listsRepository = listsRepository;

  @override
  Future<Either<Failure, Complete>> run({
    required CreateListParams params,
  }) async {
    return params.when(create: (list) => _listsRepository.addList(list));
  }
}

@freezed
class CreateListParams extends UsecaseParams with _$CreateListParams {
  const factory CreateListParams.create({
    required WordsList list,
  }) = _CreateListParams;
}
