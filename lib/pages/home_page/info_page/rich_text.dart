import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientsWidget extends StatefulWidget {
  @override
  _IngredientsWidgetState createState() => _IngredientsWidgetState();
}

class _IngredientsWidgetState extends State<IngredientsWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ingredients',
          style: GoogleFonts.lexend(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 8),
        _isExpanded
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "8 Ounces Comté Cheese, Shredded (About 2 Cups), Divided\n Brioche Hamburger Buns, Split\1 ½ Pounds Ground Chuck\n1 Tomato, Sliced\nLettuce Leaves\nSauce of Choice"),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = false;
                      });
                    },
                    child: const Text(
                      "Show less",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "8 Ounces Comté Cheese, Shredded (About 2 Cups), Divided"),
                  const Text("4 Brioche Hamburger Buns, Split"),
                  const Text("1 ½ Pounds Ground Chuck..."),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = true;
                      });
                    },
                    child: const Text(
                      "Read more",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
