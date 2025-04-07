import 'package:cloyhapp/core/Utils/color.dart';
import 'package:flutter/material.dart';

import 'list_image_comments.dart';

class ListCommentsDetails extends StatefulWidget {
  const ListCommentsDetails({super.key});

  @override
  State<ListCommentsDetails> createState() => _ListCommentsDetailsState();
}

class _ListCommentsDetailsState extends State<ListCommentsDetails> {
  bool like = false;
  late Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Kim Shine",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: StaticColors.star_color,
                    ),
                    Icon(
                      Icons.star,
                      color: StaticColors.star_color,
                    ),
                    Icon(
                      Icons.star,
                      color: StaticColors.star_color,
                    ),
                    Icon(
                      Icons.star,
                      color: StaticColors.star_color,
                    ),
                  ],
                ),
                Text(
                  "August 13, 2019",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          Text(
            "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          ListImageComments(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      like = true;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        "Helpful ",
                        style: TextStyle(
                          fontSize: 20,
                          color: like ? Colors.blue : Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.thumb_up_alt,
                        color: like ? Colors.blue : Colors.grey,
                        size: 20,
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
