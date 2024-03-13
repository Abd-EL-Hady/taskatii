import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../widgets/textformfield.dart';

class Add_task extends StatefulWidget {
  const Add_task({super.key});

  @override
  State<Add_task> createState() => _Add_taskState();
}

class _Add_taskState extends State<Add_task> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
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
                children: [
                  textform(
                    hinttext: 'hinttext',
                    icon: Icons.timer,
                  ),
                  Gap(10),
                  textform(
                    hinttext: 'hinttext',
                    icon: Icons.timer,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
