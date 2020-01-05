// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Paragraph extends DataClass implements Insertable<Paragraph> {
  final int id;
  final String title;
  final String body;
  Paragraph({@required this.id, @required this.title, @required this.body});
  factory Paragraph.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Paragraph(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      body: stringType.mapFromDatabaseResponse(data['${effectivePrefix}body']),
    );
  }
  factory Paragraph.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Paragraph(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
    };
  }

  @override
  ParagraphsCompanion createCompanion(bool nullToAbsent) {
    return ParagraphsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
    );
  }

  Paragraph copyWith({int id, String title, String body}) => Paragraph(
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );
  @override
  String toString() {
    return (StringBuffer('Paragraph(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(title.hashCode, body.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Paragraph &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body);
}

class ParagraphsCompanion extends UpdateCompanion<Paragraph> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> body;
  const ParagraphsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
  });
  ParagraphsCompanion.insert({
    @required int id,
    @required String title,
    @required String body,
  })  : id = Value(id),
        title = Value(title),
        body = Value(body);
  ParagraphsCompanion copyWith(
      {Value<int> id, Value<String> title, Value<String> body}) {
    return ParagraphsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}

class $ParagraphsTable extends Paragraphs
    with TableInfo<$ParagraphsTable, Paragraph> {
  final GeneratedDatabase _db;
  final String _alias;
  $ParagraphsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false, maxTextLength: 50);
  }

  final VerificationMeta _bodyMeta = const VerificationMeta('body');
  GeneratedTextColumn _body;
  @override
  GeneratedTextColumn get body => _body ??= _constructBody();
  GeneratedTextColumn _constructBody() {
    return GeneratedTextColumn('body', $tableName, false, maxTextLength: 3500);
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, body];
  @override
  $ParagraphsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'paragraphs';
  @override
  final String actualTableName = 'paragraphs';
  @override
  VerificationContext validateIntegrity(ParagraphsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (title.isRequired && isInserting) {
      context.missing(_titleMeta);
    }
    if (d.body.present) {
      context.handle(
          _bodyMeta, body.isAcceptableValue(d.body.value, _bodyMeta));
    } else if (body.isRequired && isInserting) {
      context.missing(_bodyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Paragraph map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Paragraph.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ParagraphsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.body.present) {
      map['body'] = Variable<String, StringType>(d.body.value);
    }
    return map;
  }

  @override
  $ParagraphsTable createAlias(String alias) {
    return $ParagraphsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ParagraphsTable _paragraphs;
  $ParagraphsTable get paragraphs => _paragraphs ??= $ParagraphsTable(this);
  @override
  List<TableInfo> get allTables => [paragraphs];
}
