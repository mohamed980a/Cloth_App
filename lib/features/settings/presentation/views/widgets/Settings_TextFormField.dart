import 'package:flutter/material.dart';

class SettingsTextformfield extends StatelessWidget {
  const SettingsTextformfield(
      {super.key, required this.labelText, required this.hintText});
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Material(
      // ✅ إضافة Material هنا
      child: Padding(
        padding: const EdgeInsets.only(right: 14),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              labelText: labelText,
              hintText: hintText,
              fillColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
