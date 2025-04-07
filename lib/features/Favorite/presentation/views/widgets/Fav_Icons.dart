import 'package:flutter/material.dart';

class Fav_IconsHorizontal extends StatelessWidget {
  const Fav_IconsHorizontal(
      {super.key, required this.isGrid, required this.onToggle});
  final bool isGrid;
  final VoidCallback onToggle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF9F9F9),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_list_outlined,
                color: Colors.black,
                size: 27,
              )),
          SizedBox(
            width: 4,
          ),
          Text(
            "Filters",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.swap_vert,
                color: Colors.black,
                size: 24,
              )),
          SizedBox(width: 4),
          Text(
            "Price: lowest to high",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            width: 25,
          ),
          IconButton(
            onPressed: onToggle,
            icon: Icon(
                isGrid ? Icons.view_list_rounded : Icons.grid_view_rounded,
                color: Colors.black,
                size: 24),
          ),
        ],
      ),
    );
  }
}
