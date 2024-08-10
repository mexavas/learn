import 'package:flutter/material.dart';
import '/features/common/widgets/appbar/appbar.dart';
import '/features/themes/constants/sizes.dart';
import '/features/themes/constants/colors.dart';
import '/features/themes/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';
import '/services/hafi/components/bottom_title_icon.dart';
import 'components/product_item.dart';
import '/data/models/product.dart';

class HafiScreen extends StatelessWidget {
  const HafiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SAppBar(
          title: const Row(
            children: [
              Text('Nkona'),
              SizedBox(width: 4.0),
              Icon(
                Iconsax.arrow_down_1,
                color: SColors.darkGrey,
              ),
            ],
          ),
          action: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.search_normal),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.notification),
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: false,
                floating: false,
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.black
                    : SColors.white,
                expandedHeight: 200,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.dividerHeight),
                  child: ListView(
                    shrinkWrap: false,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 20),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          spacing: 10.0,
                          runSpacing: 30,
                          children: [
                            const BottomTitleIcon(
                                title: "Butike",
                                iconData: Iconsax.search_zoom_in),
                            const BottomTitleIcon(
                                title: "Resitora", iconData: Iconsax.house),
                            const BottomTitleIcon(
                                title: "Cantine", iconData: Iconsax.gift),
                            const BottomTitleIcon(
                                title: "Saloon", iconData: Iconsax.people),
                            const BottomTitleIcon(
                                title: "Taxi",
                                iconData: Iconsax.search_zoom_in),
                            const BottomTitleIcon(
                                title: "cyenkayori", iconData: Iconsax.house),
                            const BottomTitleIcon(
                                title: "ateriye", iconData: Iconsax.gift),
                            const BottomTitleIcon(
                                title: "irembo", iconData: Iconsax.people),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              height: 0,
              color: Color.fromARGB(35, 158, 158, 158),
              indent: 16,
              endIndent: 16,
            ),
            itemBuilder: (context, index) {
              return ProductItem(product: productList[index]);
            },
            itemCount: productList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
