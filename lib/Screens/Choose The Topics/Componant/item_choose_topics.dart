import 'package:book_share_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../Models/choose_topics_model.dart';
import '../Repository/choose_topics_repository.dart';

class ItemChooseTopics extends StatelessWidget {
  final DetailsChooseTopics detailsChooseTopics;
  const ItemChooseTopics({Key? key, required this.detailsChooseTopics})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ChooseTopicsRepository>(
      builder: (context, chooseTopicsRepository, child) {
        return GestureDetector(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    detailsChooseTopics.imageItem,
                    height: 101,
                    width: 101,
                    fit: BoxFit.contain,
                  ),
                  detailsChooseTopics.isSelected ?? false
                      ? Container(
                          height: 101,
                          width: 101,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xffFF6EA1).withOpacity(0.4),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/Correct.svg',
                            fit: BoxFit.none,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                detailsChooseTopics.nameItem,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF',
                  color: detailsChooseTopics.isSelected ?? false
                      ? primerColor
                      : const Color(0xff17191D),
                ),
              )
            ],
          ),
          onTap: () {
            chooseTopicsRepository.selectedTopic(detailsChooseTopics);
          },
        );
      },
    );
  }
}
