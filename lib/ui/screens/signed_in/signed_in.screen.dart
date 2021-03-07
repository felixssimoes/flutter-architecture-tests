import 'package:architecture_tests/ui/screens/signed_in/signed_in.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignedIn extends StatelessWidget {
  final _viewModel = ChangeNotifierProvider(
    (ref) => SignedInViewModel(ref.read),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signed In')),
      body: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final model = watch(_viewModel);
            if (model.isLoading) return const CircularProgressIndicator();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(model.username),
                ElevatedButton(
                  onPressed: context.read(_viewModel).signOut,
                  child: const Text('Sign Out'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
