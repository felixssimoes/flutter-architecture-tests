import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_stream.model.dart';

part 'home_stream_video.model.freezed.dart';
part 'home_stream_video.model.g.dart';

@freezed
class HomeStreamVideo with _$HomeStreamVideo implements HomeStream {
  @JsonSerializable(fieldRename: FieldRename.snake)
  static const type = 'video';

  const factory HomeStreamVideo({
    required String id,
  }) = _HomeStreamVideo;

  factory HomeStreamVideo.fromJson(Map<String, dynamic> json) =>
      _$HomeStreamVideoFromJson(json);
}
