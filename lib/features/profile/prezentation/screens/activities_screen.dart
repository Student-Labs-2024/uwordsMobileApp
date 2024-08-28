import 'package:flutter/material.dart';
import 'package:uwords/features/profile/data/constants/profile_data_example.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_paddings.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_sizes.dart';
import 'package:uwords/features/profile/prezentation/widgets/activities_tile.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({super.key});

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width *
              ProfilePaddings.headerHorizontal),
      child: Column(
        children: [
          ...ProfileDataExample.activitiesTileDataExample.map((e) =>
              ActivitiesTile(image: e.image, date: e.date, title: e.title)),
          SizedBox(
            height: MediaQuery.of(context).size.height * ProfileSizes.endSpacer,
          ),
        ],
      ),
    );
  }
}
