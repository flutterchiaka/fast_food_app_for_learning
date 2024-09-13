import 'package:flutter/material.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({super.key});

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 8),
        _isExpanded
            ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Crispy Comté Frico Cheeseburgers feature a decadent twist with cheese crisps serving as the buns. "
                  "These burgers are layered with juicy beef patties, savory sautéed onions, and creamy mayonnaise, all sandwiched "
                  "together in an indulgent meal.",
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = false;
                });
              },
              child: Text(
                "Show less",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Crispy Comté Frico Cheeseburgers feature a decadent twist with cheese crisps serving as the buns. "
                  "These burgers are layered with juicy beef patties, savory sautéed onions, and creamy mayonnaise, all san...",
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = true;
                });
              },
              child: Text(
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
