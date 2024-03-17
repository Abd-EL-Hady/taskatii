import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/home_header.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // Header
                const HomeHeader(),
                const Gap(15),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('March , 17, 2024'),
                          Gap(10),
                          Text('Today'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton.extended(
                        backgroundColor: Colors.blue[900],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Add_task()),
                          );
                        },
                        label: const Text(
                          ' + Add Task',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: DatePicker(
                    width: 80,
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Colors.blue.shade900,
                    selectedTextColor: Colors.white,
                    onDateChange: (date) {
                      // New date selected
                      setState(() {});
                    },
                  ),
                ),
                ListView.builder(itemBuilder: (context, int index){
                  return const ListTile(

                  );
                }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
