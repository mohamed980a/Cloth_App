import 'package:cloyhapp/core/Utils/Widgets/btn_main.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/catalog_screen.dart';
import 'package:flutter/material.dart';

class SearchCategortBody extends StatelessWidget {
  const SearchCategortBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              btnMain(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CatalogScreen()));
                  },
                  text: 'View All Items'),
              SizedBox(
                height: 16,
              ),
              Text("Choose category",
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) => ListTile(
                    title: Text("Shirts & Blouses",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
