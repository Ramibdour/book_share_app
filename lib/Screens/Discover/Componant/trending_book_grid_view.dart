import 'package:flutter/material.dart';

import '../constant_discover.dart';

class TrendingBooksGridView extends StatelessWidget {
  const TrendingBooksGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width > 700 ? 185 : 375,
      margin: const EdgeInsets.only(top: 15, right: 16, left: 16),
      child: GridView.builder(
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            maxCrossAxisExtent: 105,
            mainAxisExtent: 169),
        itemBuilder: (context, index) {
          return Image.asset(
            trendingBooksList.elementAt(index),
            height: 169,
            width: 105,
            fit: BoxFit.contain,
          );
        },
        itemCount: trendingBooksList.length,
      ),
    );
  }
}
