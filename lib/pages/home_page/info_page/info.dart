import 'package:fast_food_app_for_learning/extensions/sized_box_extension.dart';
import 'package:fast_food_app_for_learning/pages/home_page/info_page/description.dart';
import 'package:fast_food_app_for_learning/pages/home_page/info_page/rich_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constantas/app_color.dart';
import '../../../constantas/sizes.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({
    super.key,
  });

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool isLike = false;
  int _quantity = 0;

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List arguments = ModalRoute.of(context)!.settings.arguments as List;

    final String imageUrl = arguments[0];
    final String title = arguments[1];
    final String receipt = arguments[2];
    final double rating = arguments[3];
    final double price = arguments[4];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Details",
          style: GoogleFonts.abrilFatface(),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isLike = !isLike;
              });
            },
            icon: Icon(
              size: 28,
              isLike ? Icons.favorite : Icons.favorite_border,
              color: isLike ? AppColors.redAccenColor : null,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
      color: Colors.transparent,
         elevation: 0,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Counter Widget
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),  // Shadow color
                      spreadRadius: 5,                     // Spread radius
                      blurRadius: 20,                       // Blur radius
                       blurStyle:BlurStyle.outer

                      // Shadow position (x, y)
                    ),
                  ]),
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  InkWell(
                    onTap:_decrement,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.greyColor),
                      child: Icon(
                        Icons.remove,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                   8.widthBox,
                   Text(
                    '$_quantity',
                    style: GoogleFonts.lexend(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  8.widthBox,
                  InkWell(
                    onTap: _increment,
                    child: Container(
                      width: 50,

                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.redAccenColor),
                      child: Icon(
                        Icons.add,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Add to Cart Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.redAccenColor,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: () {
                // Handle add to cart action
                print("Add $_quantity item(s) to cart");
              },
              child: Text(
                "Add To Cart",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.whiteColor),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizes.borderRadius),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    )),
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: GoogleFonts.abrilFatface(
                              fontSize: 32,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "4.4",
                              style: GoogleFonts.lexend(),
                            ),
                            ...List.generate(5, (index) {
                              return Icon(
                                index < rating.round()
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.yellow[700],
                                size: 16,
                              );
                            }),
                            Text(
                              "(1K+)",
                              style: GoogleFonts.lexend(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "\$$price",
                    style: GoogleFonts.lexend(
                      color: AppColors.redAccenColor,
                      fontSize: 28,
                    ),
                  )
                ],
              ),
              20.heightBox,
              IngredientsWidget(),
              10.heightBox,
              DescriptionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
