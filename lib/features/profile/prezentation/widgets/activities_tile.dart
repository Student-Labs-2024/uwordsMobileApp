import 'package:flutter/material.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/profile/data/constants/profile_paddings.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_text_styles.dart';

class ActivitiesTile extends StatelessWidget {
  const ActivitiesTile(
      {super.key,
      required this.image,
      required this.date,
      required this.title});
  final String image;
  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: ProfilePaddings.activitiesTileBottom),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImageNetworkView(
              imageSource: image,
              width: MediaQuery.of(context).size.width *
                  ProfileSizes.activitiesTileImageSize,
              height: MediaQuery.of(context).size.width *
                  ProfileSizes.activitiesTileImageSize,
              clipRadius: 5),
          const SizedBox(
            width: ProfileSizes.activitiesTile,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyles.activitiesTitleText,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                date,
                style: AppTextStyles.activitiesTitleData,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
