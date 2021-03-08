import 'package:architecture_tests/data/api/api.dart';
import 'package:architecture_tests/data/models/api/api.models.dart';
import 'package:architecture_tests/data/models/home_stream/home_stream.models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeStreamRepositoryProvider = Provider(
  (ref) => HomeStreamRepository(api: ref.read(apiProvider)),
);

class HomeStreamRepository {
  final Api api;

  HomeStreamRepository({required this.api});

  ///
  Future<PaginatedListResponse<HomeStream>> loadHomeStream({
    String? nextCursor,
  }) async {
    return api.getPaginatedList(
      path: 'home_stream',
      beforeCursor: nextCursor,
      itemParser: (item) => homeStreamFromJson(item),
    );
  }
}
