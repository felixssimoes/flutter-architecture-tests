import 'package:architecture_tests/data/api/api.dart';
import 'package:architecture_tests/data/models/user/user.models.dart';
import 'package:architecture_tests/util/log.util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

enum UsernameValidationResult {
  ok,
  invalidUsername,
  otherError,
}

final userRepositoryProvider = Provider((ref) => UserRepository(
      api: ref.read(apiProvider),
    ));

class UserRepository {
  final Api api;

  final _myProfileUserController = BehaviorSubject<User>();

  User? get myProfileUser => _myProfileUserController.value;
  Stream<User> get myProfileUserStream => _myProfileUserController.stream;

  UserRepository({required this.api});

  void dispose() {
    _myProfileUserController.close();
  }

  Future<User> createUser(String username, DateTime birthdate) async {
    final body = {
      'name': username,
      'birthdate': {
        'year': birthdate.year,
        'month': birthdate.month,
        'day': birthdate.day
      }
    };
    final response = await api.post(
      path: 'users',
      body: body,
      addClientHeaders: true,
    );

    // TODO: once the BE responds with name and birthdate we can simplify this
    final user = User.fromJson({
      'name': username,
      'birthdate': birthdate.toString(),
      ...response['data'],
    });
    _myProfileUserController.add(user);

    return user;
  }

  Future<UsernameValidationResult> validateUsername(String username) async {
    final body = {
      'user': {'name': username}
    };

    try {
      await api.post(
        path: 'users/validations/name',
        body: body,
        addClientHeaders: true,
      );
      return UsernameValidationResult.ok;
    } on ApiException catch (e) {
      return e.statusCode == 422
          ? UsernameValidationResult.invalidUsername
          : UsernameValidationResult.otherError;
    } catch (e) {
      debugLogError('failed to validate username', e);
      return UsernameValidationResult.otherError;
    }
  }

  Future<User> loadMyProfile() async {
    final response = await api.get(path: 'me');
    final user = User.fromJson(response['data']);
    _myProfileUserController.add(user);

    return user;
  }
}
