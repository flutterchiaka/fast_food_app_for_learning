import 'package:fast_food_app_for_learning/pages/home_page/widgets/product_gridview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constantas/sizes.dart';

class ViewAllProductPage extends StatelessWidget {
  const ViewAllProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Fast Foods",
          style: GoogleFonts.abrilFatface(
            fontSize: AppSizes.padding + 6,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.restaurant_menu)),
        ],
      ),

      body: HomePageProductGridView(),
    );
  }
}
