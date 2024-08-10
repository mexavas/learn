import 'package:flutter/material.dart';
import '/features/common/widgets/appbar/appbar.dart';
import '/features/common/widgets/appbar/tabbar.dart';
import '/features/themes/constants/sizes.dart';
import '/features/themes/constants/colors.dart';
import '/features/themes/helpers/helper_function.dart';
import 'widgets/category_tab.dart';
import 'package:iconsax/iconsax.dart';
import '/services/hafi/components/bottom_title_icon.dart';
import '/features/extensions/widgets/animated_overlay.dart';
import '/features/extensions/widgets/fab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  //static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isFabMenuVisible = false;

  void _toggleFabMenu() {
    setState(() {
      _isFabMenuVisible = !_isFabMenuVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: SAppBar(
          title: const Row(
            children: [
              Text('Nyamirambo'),
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
                pinned: true,
                floating: true,
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.black
                    : SColors.white,
                expandedHeight: 180,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.dividerHeight),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 30),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          spacing: 10.0,
                          runSpacing: 30,
                          children: [
                            BottomTitleIcon(
                                title: "Akazi",
                                iconData: Iconsax.search_zoom_in),
                            BottomTitleIcon(
                                title: "Ubukode", iconData: Iconsax.house),
                            BottomTitleIcon(
                                title: "Guteza", iconData: Iconsax.gift),
                            BottomTitleIcon(
                                title: "itsinda", iconData: Iconsax.people),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                bottom: const STabBar(
                  tabs: [
                    Tab(child: Icon(Iconsax.menu_1)),
                    Tab(child: Text('abagabo')),
                    Tab(child: Text('abagore')),
                    Tab(child: Text('igikoni')),
                    Tab(child: Text('ikoranabuhanga')),
                    Tab(child: Text('ibindi')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
            ],
          ),
        ),
        floatingActionButton: CircleAvatar(
          backgroundColor: SColors.itundaAccent,
          foregroundImage: const AssetImage("assets/logos/itundaIcon.png"),
          radius: 30,
          child: IconButton(
            onPressed: _toggleFabMenu,
            icon: const Icon(Iconsax.edit, color: SColors.white),
          ),
        ),
      ),
    );
  }
}

class _FabMenu extends StatefulWidget {
  const _FabMenu();

  @override
  State<_FabMenu> createState() => _FabMenuState();
}

class _FabMenuState extends State<_FabMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _fabController;
  late Animation<double> _fabAnimation;

  @override
  void initState() {
    super.initState();

    _fabController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    _fabAnimation = CurvedAnimation(
      parent: _fabController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _fabController.dispose();
    super.dispose();
  }

  void onPress([Function? callback]) {
    callback?.call();
  }

  @override
  Widget build(BuildContext context) {
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;

    return AnimatedOverlay(
      animation: _fabAnimation,
      color: Colors.black54,
      onPress: () {
        setState(() {
          _fabController.reverse();
        });
      },
      child: Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.only(right: 26, bottom: 26 + safeAreaBottom),
        child: ExpandedAnimationFab(
          animation: _fabAnimation,
          onPress: () {
            setState(() {
              _fabController.reverse();
            });
          },
          items: [
            FabItemData(
              'Favourite Pokemon',
              Icons.favorite,
              onPress: () => onPress(),
            ),
            FabItemData(
              'All Type',
              Icons.filter_vintage,
              onPress: () => onPress(),
            ),
            FabItemData(
              'All Gen',
              Icons.flash_on,
              onPress: () => onPress(),
            ),
            FabItemData(
              'Search',
              Icons.search,
              onPress: () => onPress(),
            ),
          ],
        ),
      ),
    );
  }
}
