import 'package:flutter/material.dart';

import '/features/themes/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SCurvedEdgesWidget(
      child: Container(
        color: SColors.itundaAccent.withOpacity(0.8),
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: SCircularContainer(
                  backgroundColor: SColors.textWhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: SCircularContainer(
                  backgroundColor: SColors.textWhite.withOpacity(0.1),
                )),
            child,
          ],
        ),
      ),
    );
  }
}
