import 'package:fast_food_app_for_learning/constantas/sizes.dart';
import 'package:fast_food_app_for_learning/extensions/sized_box_extension.dart';
import 'package:fast_food_app_for_learning/widgets/image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String receipt;
  final double rating;
  final double price;

    ProductCard({
    required this.imageUrl,
    required this.title,
    required this.receipt,
    required this.rating, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context, "/infoPage", arguments: [
            imageUrl,
            title,
            receipt,
            rating,
          price,

            ]);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.borderRadius),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  )),
            ),
            8.heightBox,
            // Title
            Text(title,
                style: GoogleFonts.abrilFatface(
                  fontSize: 18,
                )),

            // Receipt
            Text(receipt, style: GoogleFonts.lexend(fontSize: 16)),

            // Rating
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "4.4",
                    style: GoogleFonts.lexend(),
                  ),
                  ...List.generate(5, (index) {
                    return Icon(
                      index < rating.round() ? Icons.star : Icons.star_border,
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
            ),
          ],
        ),
      ),
    );
  }
}
