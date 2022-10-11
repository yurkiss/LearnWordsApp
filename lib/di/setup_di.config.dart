// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/api/app_database.dart' as _i3;
import '../data/local/database/database.dart' as _i4;
import '../data/local/repository/lists_repository_impl.dart' as _i6;
import '../data/local/repository/words_repository_impl.dart' as _i8;
import '../domain/repository/lists_repository.dart' as _i5;
import '../domain/repository/words_repository.dart' as _i7;
import '../features/list_item_details/bloc/list_item_bloc.dart' as _i9;
import '../features/lists/presentation/bloc/lists_bloc.dart' as _i10;
import '../features/surfing/presentation/bloc/word_card_block.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i7.WordsRepository>(
      _i8.WordsRepositoryImpl(database: get<_i3.AppDatabase>()));
  gh.factory<_i9.ListItemBloc>(
      () => _i9.ListItemBloc(get<_i5.ListsRepository>()));
  gh.factory<_i10.ListsBloc>(() => _i10.ListsBloc(get<_i5.ListsRepository>()));
  gh.factory<_i11.WordCardBloc>(
      () => _i11.WordCardBloc(get<_i7.WordsRepository>()));
  return get;
}
