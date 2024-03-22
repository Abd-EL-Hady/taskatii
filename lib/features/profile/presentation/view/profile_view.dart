import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati_3_4/core/utils/colors.dart';
import 'package:taskati_3_4/core/utils/text_styles.dart';

import '../../../../core/widgets/custom_btn.dart';

String? path;
String name = '';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context).colorScheme;
    //
    // final box = Hive.box('user');
    // var darkMode = box.get('darkMode');
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.primary,
        actions: [
          IconButton(
            onPressed: () {
              //  box.put('darkMode', !darkMode);
            },
            icon: Icon(
              //darkMode ? Icons.sunny :
              Icons.dark_mode_rounded,
            ),
          ),
        ],
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: Hive.box('user').listenable(),
          builder: (context, box, child) {
            String path = box.get('image') ?? '';
            String name = box.get('name') ?? '';
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                          radius: 80,
                          backgroundImage: path.isNotEmpty
                              ? FileImage(File(path)) as ImageProvider
                              : const AssetImage('assets/user.png')),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          CustomButton(
                                              text: 'Upload from Camera',
                                              onPressed: () {
                                                uploadImage(true);
                                              },
                                              width: 250),
                                          const Gap(10),
                                          CustomButton(
                                              text: 'Upload from Gallery',
                                              onPressed: () {
                                                uploadImage(false);
                                              },
                                              width: 250),
                                          const Gap(10),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              TextButton(onPressed: (){}, child: const Text('OK'),),
                                              Gap(10),
                                              TextButton(onPressed: (){}, child: const Text('OK'),),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: CircleAvatar(
                              radius: 20,
                              //backgroundColor: theme.background,
                              foregroundColor: AppColors.primary,
                              child: const Icon(Icons.camera_alt_rounded)),
                        ),
                      )
                    ],
                  ),
                  const Gap(30),
                  Divider(
                    color: AppColors.primary,
                  ),
                  const Gap(30),
                  Row(
                    children: [
                      Text(
                        name,
                        style: getTitleStyle(context, color: AppColors.primary),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: AppColors.primary,
                          child: CircleAvatar(
                              radius: 17,
                              //  backgroundColor: theme.background,
                              foregroundColor: AppColors.primary,
                              child: const Icon(Icons.edit)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  uploadImage(bool isCamera) async {
    final pickedImage = await ImagePicker()
        .pickImage(source: isCamera ? ImageSource.camera : ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        path = pickedImage.path;
      });
    }
  }
}
