import 'package:architecture_tests/services/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signed_out.viewmodel.freezed.dart';

@freezed
abstract class SignedOutViewModelState with _$SignedOutViewModelState {
  const factory SignedOutViewModelState.loading() = _Loading;
  const factory SignedOutViewModelState.ready() = _Ready;
}

class SignedOutViewModel extends StateNotifier<SignedOutViewModelState> {
  final Reader reader;

  SignedOutViewModel(this.reader)
      : super(const SignedOutViewModelState.ready());

  Future<void> signIn() async {
    state = const SignedOutViewModelState.loading();
    await reader(authServiceProvider).signIn();
  }
}
