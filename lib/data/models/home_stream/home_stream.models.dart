import 'home_stream.model.dart';
import 'home_stream_image.model.dart';
import 'home_stream_video.model.dart';

export 'home_stream.model.dart';
export 'home_stream_image.model.dart';
export 'home_stream_video.model.dart';

HomeStream? homeStreamFromJson(Map<String, dynamic> json) {
  final type = json['type'];
  final attributes = json['attributes'];
  switch (type) {
    case HomeStreamImage.type:
      return HomeStreamImage.fromJson(attributes);
    case HomeStreamVideo.type:
      return HomeStreamVideo.fromJson(attributes);
  }
  return null;
}
