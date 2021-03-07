import 'package:architecture_tests/data/repositories/user.repository.dart';
import 'package:architecture_tests/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignedInViewModel extends ChangeNotifier {
  final Reader reader;
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  String get username =>
      reader(userRepositoryProvider).myProfileUser?.username ??
      'Unknown username';

  SignedInViewModel(this.reader);

  Future<void> signOut() async {
    _isLoading = true;
    notifyListeners();

    await reader(authServiceProvider).signOut();
  }
}
