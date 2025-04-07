import 'package:flutter/material.dart';

class SettingsSwitch extends StatefulWidget {
  const SettingsSwitch({super.key});
  @override
  State<SettingsSwitch> createState() => _SettingsSwitchState();
}

class _SettingsSwitchState extends State<SettingsSwitch> {
  bool isSalesEnabled = true;
  bool isNewArrivalsEnabled = false;
  bool isDeliveryStatusEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Notifications",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SwitchListTile(
          title: Text(
            "Sales",
          ),
          value: isSalesEnabled,
          onChanged: (value) {
            setState(() {
              isSalesEnabled = value;
            });
          },
          activeTrackColor: Colors.grey[200],
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey[300],
          activeColor: Color(0xff009111),
        ),
        SwitchListTile(
          title: Text("New arrivals"),
          value: isNewArrivalsEnabled,
          onChanged: (value) {
            setState(() {
              isNewArrivalsEnabled = value;
            });
          },
          activeTrackColor: Colors.grey[200],
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey[300],
          activeColor: Color(0xff009111),
        ),
        SwitchListTile(
          title: Text("Delivery status changes"),
          value: isDeliveryStatusEnabled,
          onChanged: (value) {
            setState(() {
              isDeliveryStatusEnabled = value;
            });
          },
          activeTrackColor: Colors.grey[200],
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey[300],
          activeColor: Color(0xff009111),
        ),
      ],
    );
  }
}
