import 'package:cloyhapp/features/settings/presentation/views/widgets/Settings_TextFormField.dart';
import 'package:flutter/material.dart';

class SettingsBottomsheet extends StatelessWidget {
  const SettingsBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Password Change ",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(
            height: 25,
          ),
          SettingsTextformfield(labelText: "Old Password", hintText: "*******"),
          SizedBox(
            height: 35,
          ),
          SettingsTextformfield(labelText: "New Password", hintText: ""),
          SizedBox(
            height: 20,
          ),
          SettingsTextformfield(
              labelText: "Repeate New Password", hintText: ""),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 343,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[900],
              ),
              onPressed: () {},
              child: Text(
                "SAVE PASSWORD ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
