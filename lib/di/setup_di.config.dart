// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/domain/model/words_list.dart' as _i18;
import '../common/domain/repository/lists_repository.dart' as _i5;
import '../common/domain/repository/words_repository.dart' as _i9;
import '../data/local/api/app_database.dart' as _i3;
import '../data/local/database/database.dart' as _i4;
import '../data/local/mapper/word_mapper.dart' as _i7;
import '../data/local/mapper/words_list_mapper.dart' as _i8;
import '../data/local/repository/lists_repository_impl.dart' as _i6;
import '../data/local/repository/words_repository_impl.dart' as _i10;
import '../features/list_item_details/presentation/bloc/list_item_bloc.dart'
    as _i13;
import '../features/lists/presentation/bloc/lists_bloc.dart' as _i14;
import '../features/surfing/presentation/bloc/word_card_block.dart' as _i15;
import '../features/word_details/domain/usecase/create_word_usecase.dart'
    as _i11;
import '../features/word_details/domain/usecase/edit_word_usecase.dart' as _i12;
import '../features/word_details/presentation/bloc/word_detail_bloc.dart'
    as _i16;
import '../features/words/presentation/bloc/words_bloc.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i5.ListsRepository>(
      _i6.ListsRepositoryImpl(database: get<_i3.AppDatabase>()));
  gh.factory<_i7.WordMapper>(() => _i7.WordMapper());
  gh.factory<_i8.WordsListMapper>(() => _i8.WordsListMapper());
  gh.singleton<_i9.WordsRepository>(_i10.WordsRepositoryImpl(
    database: get<_i3.AppDatabase>(),
    wordsListMapper: get<_i8.WordsListMapper>(),
    wordMapper: get<_i7.WordMapper>(),
  ));
  gh.factory<_i11.CreateWordUsecase>(
      () => _i11.CreateWordUsecase(get<_i9.WordsRepository>()));
  gh.factory<_i12.EditWordUsecase>(
      () => _i12.EditWordUsecase(get<_i9.WordsRepository>()));
  gh.factory<_i13.ListItemBloc>(
      () => _i13.ListItemBloc(get<_i5.ListsRepository>()));
  gh.factory<_i14.ListsBloc>(() => _i14.ListsBloc(
        get<_i5.ListsRepository>(),
        get<_i9.WordsRepository>(),
      ));
  gh.factory<_i15.WordCardBloc>(
      () => _i15.WordCardBloc(get<_i9.WordsRepository>()));
  gh.factory<_i16.WordDetailBloc>(() => _i16.WordDetailBloc(
        get<_i11.CreateWordUsecase>(),
        get<_i12.EditWordUsecase>(),
        get<_i9.WordsRepository>(),
      ));
  gh.factoryParam<_i17.WordsBloc, _i18.WordsList, dynamic>((
    list,
    _,
  ) =>
      _i17.WordsBloc(
        get<_i5.ListsRepository>(),
        get<_i9.WordsRepository>(),
        list,
      ));
  return get;
}
