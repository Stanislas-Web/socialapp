import 'package:socialapp/models/album.model.dart';
import 'package:socialapp/models/base.model.dart';
import 'package:socialapp/services/base.service.dart';

class AlbumService {
  static AlbumService? _instance;
  static AlbumService get instance => _instance ??= new AlbumService();

  Future<List<AlbumModel>> getAlbums() async{
    BaseModel respose = await BaseService.instance.fetch("albums/1/photos");
    if (respose.status == 200) {
      var data = respose.data;
      if (data != null)
        return respose.data.map<AlbumModel>((ex)=> AlbumModel.fromJson(ex)).toList();
      return [];
    }
    return [];
  }
}