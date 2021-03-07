import 'package:architecture_tests/data/repositories/user.repository.dart';
import 'package:architecture_tests/services/auth/auth.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'sign_up.viewmodel.dart';

class SignUpScreen extends StatelessWidget {
  final _viewModel = ChangeNotifierProvider(
    (ref) => SignedUpViewModel(
      authService: ref.read(authServiceProvider),
      userRepository: ref.read(userRepositoryProvider),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register new user')),
      body: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final model = watch(_viewModel);
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    autofocus: true,
                    onChanged: model.updateUsername,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      errorText: model.error,
                    ),
                  ),
                  if (model.isLoading)
                    const CircularProgressIndicator()
                  else
                    ElevatedButton(
                      onPressed: context.read(_viewModel).registerNewUser,
                      child: const Text('Register'),
                    )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
