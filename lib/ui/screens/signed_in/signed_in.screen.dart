import 'package:architecture_tests/ui/screens/signed_in/signed_in.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignedIn extends StatelessWidget {
  // ignore: top_level_function_literal_block
  final _viewModel = ChangeNotifierProvider((ref) {
    return SignedInViewModel(ref.read);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signed In')),
      body: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final model = watch(_viewModel);
            if (model.isLoading) return const CircularProgressIndicator();
            return ElevatedButton(
              onPressed: context.read(_viewModel).signOut,
              child: const Text('Sign Out'),
            );
          },
        ),
      ),
    );
  }
}
