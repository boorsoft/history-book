import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Paragraphs extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text().withLength(max: 50)();
  TextColumn get body => text().withLength(max: 3500)();

  @override
  Set<Column> get primaryKey => {id};
}

@UseMoor(tables: [Paragraphs])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite', logStatements: true
          ));

  @override 
  int get schemaVersion => 1;

  Future<List<Paragraph>> getAllParagraphs() => select(paragraphs).get();
  Stream<List<Paragraph>> watchAllParagraphs() => select(paragraphs).watch();
  Future insertParagraph(Paragraph paragraph) => into(paragraphs).insert(paragraph);
}