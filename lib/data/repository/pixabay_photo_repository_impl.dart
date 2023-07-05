import 'package:image_search1/data/api/pixabay_api.dart';
import 'package:image_search1/data/mapper/photo_mapper.dart';
import 'package:image_search1/data/model/photo.dart';
import 'package:image_search1/data/repository/photo_repository.dart';

class PixabayPhotoRepositoryImple implements PhotoRepository {
  final _api = PixabayApi();

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final resultDto = await _api.getImage(query);

    if (resultDto.hits == null) {
      return [];
    }

    return resultDto.hits!.map((e) => e.toPhoto()).toList();
  }
}
