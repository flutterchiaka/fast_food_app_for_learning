import 'package:flutter/material.dart';

import 'widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(child: HomePageBody()),
    );
  }
}
