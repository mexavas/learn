import 'package:flutter/material.dart';
import '/features/common/widgets/image_text_widget/sbrand_title_with_verification_icon.dart';
import '/features/common/widgets/images/scircular_image.dart';
import '/features/common/widgets/texts/product_price_text.dart';
import '/features/common/widgets/texts/product_title_text.dart';
import '/features/themes/constants/enums.dart';
import '/features/themes/constants/image_strings.dart';
import '/features/themes/helpers/helper_function.dart';

import '/features/common/widgets/containers/rounded_container.dart';
import '/features/themes/constants/colors.dart';
import '/features/themes/constants/sizes.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price
        Row(
          children: [
            SRoundedContainer(
              radius: TSizes.sm,
              bgColor: SColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '20%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            ///product price
            Text('৳3000',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const SProductPriceText(price: '2400', isLarge: true),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        ///title
        const SProductTitleText(title: 'Nike Wild Horse'),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        Row(
          children: [
            const SProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        ///brand
        Row(
          children: [
            SCircularImage(
              image: SImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? SColors.white : SColors.black,
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            const SBrandTitleWithVerificationIcon(
                title: 'Nike', brandTextSizes: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
