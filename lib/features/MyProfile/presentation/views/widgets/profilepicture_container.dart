import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class ProfilepictureContainer extends StatelessWidget {
  const ProfilepictureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            radius: 37, backgroundImage: AssetImage(AppAssets.profilepicture)),
        SizedBox(
          width: 18,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Matilda Brown",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "matildabrown@mail.com ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xff9B9B9B)),
            ),
          ],
        ),
      ],
    );
  }
}
