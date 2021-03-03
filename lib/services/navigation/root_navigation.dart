import 'dart:async';

import 'package:architecture_tests/data/types/auth.types.dart';
import 'package:architecture_tests/services/auth/auth.service.dart';
import 'package:architecture_tests/ui/screens/signed_in/signed_in.screen.dart';
import 'package:architecture_tests/ui/screens/signed_out/signed_out.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_navigation.freezed.dart';

@freezed
abstract class RootNavigationState with _$RootNavigationState {
  const factory RootNavigationState.loading() = _Loading;
  const factory RootNavigationState.signedOut() = _SignedOut;
  const factory RootNavigationState.signedIn() = _SignedIn;
}

class RootNavigationViewModel extends StateNotifier<RootNavigationState> {
  final AuthService _authService;
  StreamSubscription<AuthStatus>? _authStatusSubscription;

  RootNavigationViewModel(this._authService)
      : super(RootNavigationState.loading()) {
    _authStatusSubscription = _authService.statusStream.listen((event) {
      switch (event) {
        case AuthStatus.signedIn:
          state = RootNavigationState.signedIn();
          break;
        case AuthStatus.signedOut:
          state = RootNavigationState.signedOut();
          break;
        case AuthStatus.unknown:
        default:
          state = RootNavigationState.loading();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _authStatusSubscription?.cancel();
  }
}

class RootNavigation extends StatelessWidget {
  // ignore: top_level_function_literal_block
  final _viewModel = StateNotifierProvider((ref) {
    final repo = ref.read(authServiceProvider);
    return RootNavigationViewModel(repo);
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final state = watch(_viewModel.state);
        return state.when(
          loading: () => Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          signedOut: () => SignedOut(),
          signedIn: () => SignedIn(),
        );
      },
    );
  }
}
