import 'package:flutter/material.dart';
import 'package:social_media/res/appColors/app_colors.dart';
import 'package:social_media/res/appImage/App_images.dart';
import 'package:social_media/res/commonWidget/custom_button.dart';
import 'package:social_media/res/customStyle/customText.dart';

class ProfilePictureView extends StatefulWidget {
  const ProfilePictureView({super.key});

  @override
  State<ProfilePictureView> createState() => _ProfilePictureViewState();
}

class _ProfilePictureViewState extends State<ProfilePictureView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_rounded)),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  title: "Profile picture added",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            SizedBox(height: 32),
            CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage(AppImages.profile),
            ),
            SizedBox(height: 240),
            CustomButton(
              title: "Done",
              fontWeight: FontWeight.w500,
              onTap: () {},
            ),
            SizedBox(height: 20),
            CustomButton(
              title: "Change Photo",
              color: AppColors.black100,
              cardColor: AppColors.bgColor,
              border: Border.all(color: AppColors.mainColor),
              fontWeight: FontWeight.w500,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
