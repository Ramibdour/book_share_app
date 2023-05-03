import 'package:book_share_app/Screens/Shared%20Widget/Paint%20Header%20Page/paint_header_model.dart';
import 'package:book_share_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class PaintHeaderPage extends StatelessWidget {
  final CustomPaintForPage customPaintForPage;
  const PaintHeaderPage({
    Key? key,
    required this.customPaintForPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    CustomPaintForPage selectedPage = customPaintForPage;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipPath(
          clipper: selectedPage == CustomPaintForPage.paintForWelcomPage
              ? ProsteBezierCurve(position: ClipPosition.bottom, list: [
                  BezierCurveSection(
                    start: const Offset(0, 140),
                    top: Offset(screenWidth / 4, 131),
                    end: Offset(screenWidth / 2, 138),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth / 2, 138),
                    top: Offset(screenWidth / 4 * 3, 144),
                    end: Offset(screenWidth, 131),
                  ),
                ])
              : selectedPage == CustomPaintForPage.paintForHome
                  ? ProsteBezierCurve(position: ClipPosition.bottom, list: [
                      BezierCurveSection(
                        start: const Offset(0, 354),
                        top: Offset(screenWidth / 4, 345),
                        end: Offset(screenWidth / 2, 352),
                      ),
                      BezierCurveSection(
                        start: Offset(screenWidth / 2, 352),
                        top: Offset(screenWidth / 4 * 3, 358),
                        end: Offset(screenWidth, 345),
                      ),
                    ])
                  : ProsteBezierCurve(position: ClipPosition.bottom, list: [
                      BezierCurveSection(
                        start: const Offset(0, 100),
                        top: Offset(screenWidth / 4, 91),
                        end: Offset(screenWidth / 2, 98),
                      ),
                      BezierCurveSection(
                        start: Offset(screenWidth / 2, 98),
                        top: Offset(screenWidth / 4 * 3, 104),
                        end: Offset(screenWidth, 91),
                      ),
                    ]),
          child: Container(
            height: selectedPage == CustomPaintForPage.paintForWelcomPage
                ? 150
                : selectedPage == CustomPaintForPage.paintForHome
                    ? 380
                    : 105,
            width: double.infinity,
            color: primerColor,
          ),
        ),
        ClipPath(
          clipper: selectedPage == CustomPaintForPage.paintForWelcomPage
              ? ProsteBezierCurve(position: ClipPosition.bottom, list: [
                  BezierCurveSection(
                    start: const Offset(0, 99),
                    top: Offset(screenWidth / 4, 122),
                    end: Offset(screenWidth / 2, 116),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth / 2, 116),
                    top: Offset(screenWidth / 4 * 3, 110),
                    end: Offset(screenWidth, 122),
                  ),
                ])
              : selectedPage == CustomPaintForPage.paintForHome
                  ? ProsteBezierCurve(position: ClipPosition.bottom, list: [
                      BezierCurveSection(
                        start: const Offset(0, 311),
                        top: Offset(screenWidth / 4, 334),
                        end: Offset(screenWidth / 2, 328),
                      ),
                      BezierCurveSection(
                        start: Offset(screenWidth / 2, 328),
                        top: Offset(screenWidth / 4 * 3, 322),
                        end: Offset(screenWidth, 334),
                      ),
                    ])
                  : ProsteBezierCurve(position: ClipPosition.bottom, list: [
                      BezierCurveSection(
                        start: const Offset(0, 59),
                        top: Offset(screenWidth / 4, 82),
                        end: Offset(screenWidth / 2, 76),
                      ),
                      BezierCurveSection(
                        start: Offset(screenWidth / 2, 76),
                        top: Offset(screenWidth / 4 * 3, 70),
                        end: Offset(screenWidth, 82),
                      ),
                    ]),
          child: Container(
            height: selectedPage == CustomPaintForPage.paintForWelcomPage
                ? 125
                : selectedPage == CustomPaintForPage.paintForHome
                    ? 340
                    : 85,
            width: double.infinity,
            color: Colors.white.withOpacity(0.24),
          ),
        ),
      ],
    );
  }
}
