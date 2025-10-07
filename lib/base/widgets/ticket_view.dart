import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart' show AppStyles;
import 'package:my_app/base/widgets/app_layoutbuilder_widget.dart'
    show AppLayoutBuilderWidget;
import 'package:my_app/base/widgets/big_dot.dart' show BigDot;

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 176,
      child: Container(
        // margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "NYC",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                const BigDot(),
                Expanded(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 24,
                        child: AppLayoutBuilderWidget(randomDivider: 6),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.57,
                          child: const Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const BigDot(),
                Expanded(child: Container()),
                Text(
                  "LDN",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
