import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_stream.model.dart';

part 'home_stream_image.model.freezed.dart';
part 'home_stream_image.model.g.dart';

@freezed
class HomeStreamImage with _$HomeStreamImage implements HomeStream {
  @JsonSerializable(fieldRename: FieldRename.snake)
  static const type = 'image';

  const factory HomeStreamImage({
    required String id,
    // required String previewImageUrl,
    // required String imageUrl,
  }) = _HomeStreamImage;

  factory HomeStreamImage.fromJson(Map<String, dynamic> json) =>
      _$HomeStreamImageFromJson(json);
}
