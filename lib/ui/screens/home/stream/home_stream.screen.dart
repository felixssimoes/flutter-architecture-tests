import 'package:architecture_tests/data/repositories/home_stream.repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_stream.viewmodel.dart';

class HomeStreamScreen extends StatelessWidget {
  final _viewModel = ChangeNotifierProvider(
    (ref) => HomeStreamViewModel(
      homeStreamRepository: ref.read(homeStreamRepositoryProvider),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Stream')),
      body: Consumer(
        builder: (context, watch, child) {
          final model = watch(_viewModel);

          if (model.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: model.homeStream.length,
            itemBuilder: (context, index) {
              final item = model.homeStream[index];
              return Text(item.id);
            },
          );
        },
      ),
    );
  }
}
