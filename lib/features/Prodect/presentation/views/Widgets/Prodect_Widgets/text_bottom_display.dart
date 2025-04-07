import 'package:cloyhapp/features/Home/presentation/veiws/home_screen_body.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Card_Widgets/size_bottom_model.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/prodect_card_screen.dart';
import 'package:flutter/material.dart';

class TextBottomDisplay extends StatelessWidget {
  const TextBottomDisplay({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(color: Color(0xff000000)),
            left: BorderSide(color: Color(0xff000000)),
            top: BorderSide(color: Color(0xff000000)),
            bottom: BorderSide(color: Color(0xff000000)),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 50,
        width: 150,
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SizeBottomModel()));
          },
          child: Text(
            title,
            style: TextStyle(fontSize: 20, color: Color(0xff000000)),
          ),
        ));
  }
}
