import 'package:book_share_app/Screens/Library%20Page/Componant/general.dart';
import 'package:book_share_app/Screens/Library%20Page/Componant/most_viewed.dart';
import 'package:book_share_app/Screens/Library%20Page/Componant/new.dart';
import 'package:book_share_app/Screens/Shared%20Widget/Custom%20Search%20Field/custom_search_field.dart';
import 'package:book_share_app/constant.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Column(
              children: [
                const CustomSearchField(),
                TabBar(
                    isScrollable: true,
                    unselectedLabelColor: const Color(0xff2C2C2C).withAlpha(70),
                    labelColor: primerColor,
                    indicatorColor: Colors.transparent,
                    tabs: const [
                      Tab(
                        child: Text(
                          'General',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SF',
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'New',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SF',
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Most Viewed',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SF',
                          ),
                        ),
                      ),
                    ]),
                const Expanded(
                  child: TabBarView(children: [
                    General(),
                    New(),
                    MostViewed(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
