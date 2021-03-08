import 'dart:isolate';

import 'package:architecture_tests/data/models/home_stream/home_stream.models.dart';
import 'package:architecture_tests/data/repositories/home_stream.repository.dart';
import 'package:flutter/cupertino.dart';

class HomeStreamViewModel extends ChangeNotifier {
  final HomeStreamRepository homeStreamRepository;
  bool _isLoading = false;
  List<HomeStream> _homeStream = [];

  bool get isLoading => _isLoading;
  List<HomeStream> get homeStream => _homeStream;

  HomeStreamViewModel({
    required this.homeStreamRepository,
  }) {
    loadHomeStream();
  }

  Future<void> loadHomeStream() async {
    _isLoading = true;
    notifyListeners();

    final response = await homeStreamRepository.loadHomeStream();
    _homeStream = response.list;
    _isLoading = false;
    notifyListeners();
  }
}
