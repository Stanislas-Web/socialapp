import 'dart:io';
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:socialapp/dao/dataStore/album/album.dao.dart';
import 'package:socialapp/dao/migrations/migration.util.dart';
import 'package:socialapp/dao/models/album.db.dart';

part 'database.g.dart';

@UseMoor(tables: [
  Albums
], daos: [
  AlbumDAO,
])
class AppDB extends _$AppDB {
  static AppDB? _instance;

  static AppDB get instance => _instance ??= new AppDB();

  AppDB() : super(_openConnection());

  @override
  
  int get schemaVersion => 1;
  
  @override
  // ignore: override_on_non_overriding_member
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m)=> m.createAll(),
    onUpgrade: MigrationUtil.instance.migrate
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

