import 'package:fast_food_app_for_learning/pages/home_page/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePageProductGridView extends StatelessWidget {
  const HomePageProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
      primary: false,
      shrinkWrap: true,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1 / 1.1,
      ),
      itemCount: 10,
      itemBuilder: (ctx, index) {
        return ProductCard(
          imageUrl: 'assets/imgs/food.jpg',
          title: 'Fast Food ${index + 1}',
          receipt: 'Receipt Info',
          rating: 4.5, price: 38, // Example rating
        );
      },
    );
  }
}
