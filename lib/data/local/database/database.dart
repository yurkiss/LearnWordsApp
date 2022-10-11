import 'dart:async';
import 'dart:io';

import 'package:drift/drift.dart';

// These imports are only needed to open the database
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:learnwordsapp/data/local/api/app_database.dart';

part 'database.g.dart';

@DriftDatabase(
  // relative import for the drift file. Drift also supports `package:`
  // imports
  include: {'tables.drift'},
)
@Singleton(as: AppDatabase, dispose: disposeDataBase)
class AppDb extends _$AppDb implements AppDatabase {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> dispose() async {
    await close();
  }

  // returns the generated id
  @override
  Future<int> addList(DbWordListsCompanion entry) {
    return into(dbWordLists).insert(entry);
  }

  Future<int> addWord(DbTranslatedWordsCompanion entry) {
    return into(dbTranslatedWords).insert(entry);
  }

  @override
  Stream<List<DbWordList>> watchLists() {
    return select(dbWordLists).watch();
  }

  @override
  Future<List<DbWordList>> getLists() {
    return select(dbWordLists).get();
  }

  Stream<List<DbTranslatedWord>> watchWordsInList(DbWordList c) {
    return (select(dbTranslatedWords)
          ..where((DbTranslatedWords t) => t.wordList.equals(c.id)))
        .watch();
  }

  @override
  Future<List<DbTranslatedWord>> getWordsInList(int listId) {
    return (select(dbTranslatedWords)
          ..where((DbTranslatedWords t) => t.wordList.equals(listId)))
        .get();
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

FutureOr disposeDataBase(AppDatabase instance) {
  return instance.dispose();
}
