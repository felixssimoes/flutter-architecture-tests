import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'signed_out.viewmodel.dart';

class SignedOut extends StatelessWidget {
  final _viewModel =
      StateNotifierProvider((ref) => SignedOutViewModel(ref.read));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signed Out')),
      body: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final state = watch(_viewModel.state);
            return state.when(
              loading: () => const CircularProgressIndicator(),
              ready: () => ElevatedButton(
                onPressed: context.read(_viewModel).signIn,
                child: const Text('Sign In'),
              ),
            );
          },
        ),
      ),
    );
  }
}
