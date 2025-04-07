import 'package:flutter/material.dart';

class PropUpMenueWidget extends StatelessWidget {
  const PropUpMenueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return

        //////////////////////////////////////////////////////////////////

        PopupMenuButton<String>(
      icon: Icon(Icons.more_vert, size: 24, color: Colors.grey),
      onSelected: (value) => (),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text("Add to favourite"),
        ),
        PopupMenuDivider(),
        PopupMenuItem(
          child: Text("Delete from list"),
        ),
      ],
    );
  }
}
