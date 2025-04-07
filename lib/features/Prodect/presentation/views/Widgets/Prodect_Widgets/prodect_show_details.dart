import 'package:cloyhapp/core/Utils/color.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/listView.builder_New.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/list_choice.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/text_bottom_display.dart';
import 'package:flutter/material.dart';

class ProdectShowDetails extends StatelessWidget {
  const ProdectShowDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ListChoice(),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "H&M",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "125.99 \$",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Short black dress",
                    style: TextStyle(fontSize: 15),
                  ),
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
                      Icon(
                        Icons.star_border_purple500_outlined,
                        color: StaticColors.star_color,
                      ),
                      Text(" (10)"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping info",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {}, child: Icon(Icons.navigate_next)),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Support",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {}, child: Icon(Icons.navigate_next)),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You can also like this",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    " 12 items",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            ListViewNewHorizontal(),
          ],
        ));
  }
}
