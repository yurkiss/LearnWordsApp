// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class DbWordList extends DataClass implements Insertable<DbWordList> {
  final int id;
  final String? title;
  const DbWordList({required this.id, this.title});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    return map;
  }

  DbWordListsCompanion toCompanion(bool nullToAbsent) {
    return DbWordListsCompanion(
      id: Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
    );
  }

  factory DbWordList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbWordList(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String?>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String?>(title),
    };
  }

  DbWordList copyWith({int? id, Value<String?> title = const Value.absent()}) =>
      DbWordList(
        id: id ?? this.id,
        title: title.present ? title.value : this.title,
      );
  @override
  String toString() {
    return (StringBuffer('DbWordList(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbWordList && other.id == this.id && other.title == this.title);
}

class DbWordListsCompanion extends UpdateCompanion<DbWordList> {
  final Value<int> id;
  final Value<String?> title;
  const DbWordListsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
  });
  DbWordListsCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
  });
  static Insertable<DbWordList> custom({
    Expression<int>? id,
    Expression<String>? title,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
    });
  }

  DbWordListsCompanion copyWith({Value<int>? id, Value<String?>? title}) {
    return DbWordListsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbWordListsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

class DbWordLists extends Table with TableInfo<DbWordLists, DbWordList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  DbWordLists(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [id, title];
  @override
  String get aliasedName => _alias ?? 'db_word_lists';
  @override
  String get actualTableName => 'db_word_lists';
  @override
  VerificationContext validateIntegrity(Insertable<DbWordList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbWordList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbWordList(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
    );
  }

  @override
  DbWordLists createAlias(String alias) {
    return DbWordLists(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class DbTranslatedWord extends DataClass
    implements Insertable<DbTranslatedWord> {
  final int id;
  final String? wordTitle;
  final String? wordTranslation;
  final int wordList;
  const DbTranslatedWord(
      {required this.id,
      this.wordTitle,
      this.wordTranslation,
      required this.wordList});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || wordTitle != null) {
      map['word_title'] = Variable<String>(wordTitle);
    }
    if (!nullToAbsent || wordTranslation != null) {
      map['word_translation'] = Variable<String>(wordTranslation);
    }
    map['word_list'] = Variable<int>(wordList);
    return map;
  }

  DbTranslatedWordsCompanion toCompanion(bool nullToAbsent) {
    return DbTranslatedWordsCompanion(
      id: Value(id),
      wordTitle: wordTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(wordTitle),
      wordTranslation: wordTranslation == null && nullToAbsent
          ? const Value.absent()
          : Value(wordTranslation),
      wordList: Value(wordList),
    );
  }

  factory DbTranslatedWord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbTranslatedWord(
      id: serializer.fromJson<int>(json['id']),
      wordTitle: serializer.fromJson<String?>(json['word_title']),
      wordTranslation: serializer.fromJson<String?>(json['word_translation']),
      wordList: serializer.fromJson<int>(json['word_list']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'word_title': serializer.toJson<String?>(wordTitle),
      'word_translation': serializer.toJson<String?>(wordTranslation),
      'word_list': serializer.toJson<int>(wordList),
    };
  }

  DbTranslatedWord copyWith(
          {int? id,
          Value<String?> wordTitle = const Value.absent(),
          Value<String?> wordTranslation = const Value.absent(),
          int? wordList}) =>
      DbTranslatedWord(
        id: id ?? this.id,
        wordTitle: wordTitle.present ? wordTitle.value : this.wordTitle,
        wordTranslation: wordTranslation.present
            ? wordTranslation.value
            : this.wordTranslation,
        wordList: wordList ?? this.wordList,
      );
  @override
  String toString() {
    return (StringBuffer('DbTranslatedWord(')
          ..write('id: $id, ')
          ..write('wordTitle: $wordTitle, ')
          ..write('wordTranslation: $wordTranslation, ')
          ..write('wordList: $wordList')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, wordTitle, wordTranslation, wordList);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbTranslatedWord &&
          other.id == this.id &&
          other.wordTitle == this.wordTitle &&
          other.wordTranslation == this.wordTranslation &&
          other.wordList == this.wordList);
}

class DbTranslatedWordsCompanion extends UpdateCompanion<DbTranslatedWord> {
  final Value<int> id;
  final Value<String?> wordTitle;
  final Value<String?> wordTranslation;
  final Value<int> wordList;
  const DbTranslatedWordsCompanion({
    this.id = const Value.absent(),
    this.wordTitle = const Value.absent(),
    this.wordTranslation = const Value.absent(),
    this.wordList = const Value.absent(),
  });
  DbTranslatedWordsCompanion.insert({
    this.id = const Value.absent(),
    this.wordTitle = const Value.absent(),
    this.wordTranslation = const Value.absent(),
    required int wordList,
  }) : wordList = Value(wordList);
  static Insertable<DbTranslatedWord> custom({
    Expression<int>? id,
    Expression<String>? wordTitle,
    Expression<String>? wordTranslation,
    Expression<int>? wordList,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (wordTitle != null) 'word_title': wordTitle,
      if (wordTranslation != null) 'word_translation': wordTranslation,
      if (wordList != null) 'word_list': wordList,
    });
  }

  DbTranslatedWordsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? wordTitle,
      Value<String?>? wordTranslation,
      Value<int>? wordList}) {
    return DbTranslatedWordsCompanion(
      id: id ?? this.id,
      wordTitle: wordTitle ?? this.wordTitle,
      wordTranslation: wordTranslation ?? this.wordTranslation,
      wordList: wordList ?? this.wordList,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (wordTitle.present) {
      map['word_title'] = Variable<String>(wordTitle.value);
    }
    if (wordTranslation.present) {
      map['word_translation'] = Variable<String>(wordTranslation.value);
    }
    if (wordList.present) {
      map['word_list'] = Variable<int>(wordList.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbTranslatedWordsCompanion(')
          ..write('id: $id, ')
          ..write('wordTitle: $wordTitle, ')
          ..write('wordTranslation: $wordTranslation, ')
          ..write('wordList: $wordList')
          ..write(')'))
        .toString();
  }
}

class DbTranslatedWords extends Table
    with TableInfo<DbTranslatedWords, DbTranslatedWord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  DbTranslatedWords(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _wordTitleMeta = const VerificationMeta('wordTitle');
  late final GeneratedColumn<String> wordTitle = GeneratedColumn<String>(
      'word_title', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _wordTranslationMeta =
      const VerificationMeta('wordTranslation');
  late final GeneratedColumn<String> wordTranslation = GeneratedColumn<String>(
      'word_translation', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _wordListMeta = const VerificationMeta('wordList');
  late final GeneratedColumn<int> wordList = GeneratedColumn<int>(
      'word_list', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES db_word_lists (id)');
  @override
  List<GeneratedColumn> get $columns =>
      [id, wordTitle, wordTranslation, wordList];
  @override
  String get aliasedName => _alias ?? 'db_translated_words';
  @override
  String get actualTableName => 'db_translated_words';
  @override
  VerificationContext validateIntegrity(Insertable<DbTranslatedWord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('word_title')) {
      context.handle(_wordTitleMeta,
          wordTitle.isAcceptableOrUnknown(data['word_title']!, _wordTitleMeta));
    }
    if (data.containsKey('word_translation')) {
      context.handle(
          _wordTranslationMeta,
          wordTranslation.isAcceptableOrUnknown(
              data['word_translation']!, _wordTranslationMeta));
    }
    if (data.containsKey('word_list')) {
      context.handle(_wordListMeta,
          wordList.isAcceptableOrUnknown(data['word_list']!, _wordListMeta));
    } else if (isInserting) {
      context.missing(_wordListMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbTranslatedWord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbTranslatedWord(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      wordTitle: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}word_title']),
      wordTranslation: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}word_translation']),
      wordList: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}word_list'])!,
    );
  }

  @override
  DbTranslatedWords createAlias(String alias) {
    return DbTranslatedWords(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final DbWordLists dbWordLists = DbWordLists(this);
  late final DbTranslatedWords dbTranslatedWords = DbTranslatedWords(this);
  Selectable<DbTranslatedWord> wordsFromList(int var1) {
    return customSelect(
        'SELECT * FROM db_translated_words WHERE word_list = ?1',
        variables: [
          Variable<int>(var1)
        ],
        readsFrom: {
          dbTranslatedWords,
        }).asyncMap(dbTranslatedWords.mapFromRow);
  }

  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [dbWordLists, dbTranslatedWords];
}
