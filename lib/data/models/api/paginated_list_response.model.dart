import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_list_response.model.freezed.dart';

@freezed
abstract class PaginatedListResponse<T> with _$PaginatedListResponse<T> {
  const factory PaginatedListResponse({
    required List<T> list,
    String? cursor,
    String? nextCursor,
  }) = _PaginatedListResponse<T>;

  factory PaginatedListResponse.initial() => const PaginatedListResponse(
        list: [],
        cursor: null,
        nextCursor: null,
      );
}
