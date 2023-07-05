import 'package:image_search1/data/model/photo.dart';

import '../dto/pixabay_result_dto.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
        id: id ?? 0,
        url: webformatURL ?? '',
        tags: tags ?? '',
        views: views ?? 0,
    );
  }
}
