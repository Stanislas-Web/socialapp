import 'package:rxdart/rxdart.dart';
import 'package:socialapp/models/album.model.dart';
import 'package:socialapp/services/http/album.service.dart';


class AlbumBloc {
  int idCat = 0;
  int indexSelected = -1;
  bool showSubCategorie = false;
  List<AlbumModel> _allAlbum = [];
  static AlbumBloc? _instance;
  static AlbumBloc get instance => _instance ??= new AlbumBloc();
  // ignore: close_sinks
  BehaviorSubject<List<AlbumModel>?> _albumSubject = BehaviorSubject.seeded(null);
  Stream<List<AlbumModel>?> get stream => _albumSubject.stream;
  List<AlbumModel>? get albums => _albumSubject.value;
  Sink<List<AlbumModel>?> get albumSink => _albumSubject.sink;

  Future<List<AlbumModel>> getAllAlbum() async {
    // if(){

    // }else{

    // }
    var data = await (AlbumService.instance.getAlbums());
    albumSink.add(data);
    return data;
  }

}