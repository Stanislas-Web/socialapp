import 'package:moor/moor.dart';
import 'package:socialapp/dao/database.dart';
import 'package:socialapp/dao/models/album.db.dart';
// import '../../database.dart';
part 'album.dao.g.dart';

@UseDao(tables:[Albums])
class AlbumDAO extends DatabaseAccessor<AppDB> with _$AlbumDAOMixin {
  AppDB db;
  AlbumDAO(this.db) : super(db);

  Future<List<Album>>getAllAlbums() => select(albums).get();
  Stream<List<Album>>watchAllAlbums() => select(albums).watch();
  Future insertAlbum(Album album) => into(albums).insert(album);
  // Future updateAlbum(Album album) => update(albums).replace(album);
  // Future deleteAlbum(Album album) => delete(albums).delete(album);
}