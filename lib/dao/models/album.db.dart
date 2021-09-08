import 'package:moor/moor.dart';

class Albums extends Table {
  TextColumn get id => text()();
  TextColumn get albumId => text()();
  TextColumn get title => text()();	
  TextColumn get thumbnailUrl => text()();
  @override
  Set<Column> get primaryKey => {id};
}
