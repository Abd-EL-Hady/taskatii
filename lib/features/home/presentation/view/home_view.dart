import 'package:flutter/material.dart';
import 'package:taskati_3_4/features/home/presentation/widgets/home_header.dart';

import 'addtask.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // Header
              const HomeHeader(),
              FloatingActionButton.large(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Add_task()),
                  );
                },
                child: const Text('Add Task'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
