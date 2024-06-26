import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/textformfield.dart';

// ignore: camel_case_types
class Add_task extends StatefulWidget {
  const Add_task({super.key});

  @override
  State<Add_task> createState() => _Add_taskState();
}

// ignore: camel_case_types
class _Add_taskState extends State<Add_task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Center(child: Text('Add Task')),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(fontSize: 15),
              ),
              Gap(10),
              textform(
                hinttext: 'Enter Title Here',
              ),
              Gap(10),
              Text(
                'Note',
                style: TextStyle(fontSize: 15),
              ),
              Gap(10),
              textform(
                hinttext: 'Enter Note Here',
              ),
              Gap(10),
              Text(
                'Date',
                style: TextStyle(fontSize: 15),
              ),
              Gap(10),
              textform(
                icon: Icons.calendar_month_sharp,
                hinttext: '14/3/2024',
              ),
              Gap(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Start Time',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Gap(10),
                  Expanded(
                    child: Text(
                      'End Time',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              Gap(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(10),
                  Flexible(
                    fit: FlexFit.loose,
                      child: textform(
                    hinttext: '02:00 AM',
                    icon: Icons.update,
                  )),
                  Gap(10),
                  Flexible(
                      child: textform(
                    hinttext: '02:00 AM',
                    icon: Icons.update,
                  )),
                ],
              ),
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
