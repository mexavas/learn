import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '/features/themes/constants/sizes.dart';

class SRatingAndShare extends StatelessWidget {
  const SRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '(199)'),
                ],
              ),
            ),
          ],
        ),

        ///share button
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: TSizes.iconMd),
        ),
      ],
    );
  }
}
