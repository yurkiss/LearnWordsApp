// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/domain/model/words_list.dart' as _i16;
import '../common/domain/repository/lists_repository.dart' as _i11;
import '../common/domain/repository/words_repository.dart' as _i7;
import '../data/local/api/app_database.dart' as _i3;
import '../data/local/database/database.dart' as _i4;
import '../data/local/mapper/word_mapper.dart' as _i5;
import '../data/local/mapper/words_list_mapper.dart' as _i6;
import '../data/local/repository/lists_repository_impl.dart' as _i12;
import '../data/local/repository/words_repository_impl.dart' as _i8;
import '../features/list_item_details/domain/usecase/create_list_usecase.dart'
    as _i17;
import '../features/list_item_details/presentation/bloc/list_item_bloc.dart'
    as _i18;
import '../features/lists/presentation/bloc/lists_bloc.dart' as _i19;
import '../features/surfing/presentation/bloc/word_card_block.dart' as _i13;
import '../features/word_details/domain/usecase/create_word_usecase.dart'
    as _i9;
import '../features/word_details/domain/usecase/edit_word_usecase.dart' as _i10;
import '../features/word_details/presentation/bloc/word_detail_bloc.dart'
    as _i14;
import '../features/words/presentation/bloc/words_bloc.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppDatabase>(
    _i4.AppDb(),
    dispose: _i4.disposeDataBase,
  );
  gh.factory<_i5.WordMapper>(() => _i5.WordMapper());
  gh.factory<_i6.WordsListMapper>(() => _i6.WordsListMapper());
  gh.singleton<_i7.WordsRepository>(_i8.WordsRepositoryImpl(
    database: get<_i3.AppDatabase>(),
    wordsListMapper: get<_i6.WordsListMapper>(),
    wordMapper: get<_i5.WordMapper>(),
  ));
  gh.factory<_i9.CreateWordUsecase>(
      () => _i9.CreateWordUsecase(get<_i7.WordsRepository>()));
  gh.factory<_i10.EditWordUsecase>(
      () => _i10.EditWordUsecase(get<_i7.WordsRepository>()));
  gh.singleton<_i11.ListsRepository>(_i12.ListsRepositoryImpl(
    database: get<_i3.AppDatabase>(),
    wordsListMapper: get<_i6.WordsListMapper>(),
  ));
  gh.factory<_i13.WordCardBloc>(
      () => _i13.WordCardBloc(get<_i7.WordsRepository>()));
  gh.factory<_i14.WordDetailBloc>(() => _i14.WordDetailBloc(
        get<_i9.CreateWordUsecase>(),
        get<_i10.EditWordUsecase>(),
        get<_i7.WordsRepository>(),
      ));
  gh.factoryParam<_i15.WordsBloc, _i16.WordsList, dynamic>((
    list,
    _,
  ) =>
      _i15.WordsBloc(
        get<_i11.ListsRepository>(),
        get<_i7.WordsRepository>(),
        list,
      ));
  gh.factory<_i17.CreateListUsecase>(
      () => _i17.CreateListUsecase(get<_i11.ListsRepository>()));
  gh.factory<_i18.ListItemBloc>(
      () => _i18.ListItemBloc(get<_i17.CreateListUsecase>()));
  gh.factory<_i19.ListsBloc>(() => _i19.ListsBloc(
        get<_i11.ListsRepository>(),
        get<_i7.WordsRepository>(),
      ));
  return get;
}
