import 'package:cloneofspotify/pages/search/card_category.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> cardsCategory = [
    'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452',
    'https://img.elo7.com.br/product/original/3B3E113/quadro-placa-mdf-spotify-capa-album-cd-olivia-rodrigo.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: cardsCategory.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisExtent: 120,
        ),
        itemBuilder: (BuildContext context, index) {
          return CardCategory(
            image: cardsCategory[index],
          );
        },
      ),
    );
  }
}
