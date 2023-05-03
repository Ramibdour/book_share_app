import 'package:flutter/material.dart';

import '../Models/library_page_model.dart';

class ItemLibrary extends StatefulWidget {
  const ItemLibrary({
    Key? key,
    required this.detailsItemLibrary,
  }) : super(key: key);
  final DetailsItemLibrary detailsItemLibrary;

  @override
  State<ItemLibrary> createState() => _ItemLibraryState();
}

class _ItemLibraryState extends State<ItemLibrary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: 170,
      decoration: BoxDecoration(
        color: Color(widget.detailsItemLibrary.colorContainer),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.detailsItemLibrary.nameItem,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'SF',
                color: Colors.white),
          ),
          const SizedBox(
            height: 12,
          ),
          Image.asset(
            widget.detailsItemLibrary.imageItem,
            width: 80,
            height: 120,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
