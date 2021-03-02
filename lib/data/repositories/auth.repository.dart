// import 'package:architecture_tests/data/types/auth.types.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:rxdart/rxdart.dart';

// final authRepositorProvider = Provider((_) => AuthRepository()..autoSignIn());

// class AuthRepository {
//   final _statusSubject = BehaviorSubject.seeded(AuthStatus.unknown);

//   Stream<AuthStatus> get statusStream => _statusSubject.stream;

//   void dispose() {
//     _statusSubject.close();
//   }

//   Future<void> autoSignIn() async {
//     await Future.delayed(const Duration(seconds: 1));
//     _statusSubject.add(AuthStatus.signedOut);
//   }

//   Future<void> signIn() async {
//     await Future.delayed(const Duration(seconds: 2));
//     _statusSubject.add(AuthStatus.signedIn);
//   }

//   Future<void> signOut() async {
//     await Future.delayed(const Duration(seconds: 1));
//     _statusSubject.add(AuthStatus.signedOut);
//   }
// }
