import 'package:architecture_tests/data/repositories/user.repository.dart';
import 'package:architecture_tests/services/services.dart';
import 'package:flutter/cupertino.dart';

class SignedUpViewModel extends ChangeNotifier {
  final UserRepository userRepository;
  final AuthService authService;

  bool _isLoading = false;
  String _username = '';
  String _error = '';

  SignedUpViewModel({
    required this.userRepository,
    required this.authService,
  });

  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> registerNewUser() async {
    if (_username.isEmpty) {
      _error = 'Username cannot be empty';
      notifyListeners();
      return;
    }

    _isLoading = true;
    notifyListeners();

    final userNameValidation = await userRepository.validateUsername(_username);
    if (userNameValidation != UsernameValidationResult.ok) {
      _error = 'Invalid username';
      _isLoading = false;
      notifyListeners();
      return;
    }

    await authService.signUp(
      username: _username,
      birthdate: DateTime.now(),
    );

    _isLoading = false;
    notifyListeners();
  }

  void updateUsername(String value) {
    _username = value;
    notifyListeners();
  }
}
