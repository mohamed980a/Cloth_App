import 'package:flutter/material.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/features/home/presentation/screens/widgets/category.dart';
import 'package:learn_chinese/features/home/presentation/screens/widgets/home_top_bar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeTopBar(),
                verticalSpace(20),
                Category(title: 'المفردات والكلمات', description: 'تعلم الكلمات الأساسية مع النطق الصحيح', iconData: 'assets/svgs/words.svg',),
                Category(title: ' تمارين الاستماع ', description:'تدرب على فهم المحادثات الصينية', iconData: 'assets/svgs/lisegten.svg',),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
