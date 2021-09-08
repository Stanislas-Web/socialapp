import '../database.dart';
import 'package:moor/moor.dart';
class MigrationUtil {
  static MigrationUtil? _instance;
  static MigrationUtil get instance => _instance ??= new MigrationUtil();
  version1Migration(Migrator m) async{
    await m.createTable(AppDB.instance.albums);
    await version1Migration(m);
  }


  Future<void> migrate(Migrator m, int from, int to) async{
    switch (from) {
      case 1:
        await version1Migration(m);
        break;
    }
  }
}