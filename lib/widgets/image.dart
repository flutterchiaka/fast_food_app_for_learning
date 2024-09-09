import 'package:flutter/material.dart';

class CustomeAssetImage extends StatelessWidget {
  final String imgUrl;
  const CustomeAssetImage(this.imgUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imgUrl, fit: BoxFit.cover,);
  }
}
