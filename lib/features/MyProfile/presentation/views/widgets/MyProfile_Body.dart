import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_Custom_AppBar.dart';
import 'package:cloyhapp/features/MyProfile/presentation/views/widgets/ListTile_listview.dart';
import 'package:cloyhapp/features/MyProfile/presentation/views/widgets/profilepicture_container.dart';
import 'package:flutter/material.dart';

class MyprofileBody extends StatelessWidget {
  const MyprofileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14, right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FavCustomAppbar(),
          SizedBox(
            height: 30,
          ),
          Text(
            "My Profile",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
          SizedBox(
            height: 20,
          ),
          ProfilepictureContainer(),
          SizedBox(
            height: 20,
          ),
          ListtileListview(),
        ],
      ),
    );
  }
}
