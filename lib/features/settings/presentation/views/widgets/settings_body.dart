import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_Custom_AppBar.dart';
import 'package:cloyhapp/features/settings/presentation/views/widgets/Settings_Switch.dart';
import 'package:cloyhapp/features/settings/presentation/views/widgets/Settings_TextFormField.dart';
import 'package:cloyhapp/features/settings/presentation/views/widgets/settings_Change_Paasword.dart';
import 'package:flutter/material.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FavCustomAppbar(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Personal Information",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            SettingsTextformfield(
                labelText: "Full name", hintText: "Enter Your Name"),
            SizedBox(
              height: 20,
            ),
            SettingsTextformfield(
                labelText: " Date of Birth", hintText: "12/12/1989"),
            SizedBox(
              height: 40,
            ),
            SettingsChangePaasword(),
            SizedBox(
              height: 10,
            ),
            SettingsTextformfield(labelText: " Password", hintText: "********"),
            SizedBox(
              height: 30,
            ),
            SettingsSwitch(),
          ],
        ),
      ),
    ));
  }
}
