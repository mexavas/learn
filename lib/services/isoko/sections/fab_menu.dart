part of 'pokedex.dart';

class _FabMenu extends StatefulWidget {
  const _FabMenu();

  @override
  State<_FabMenu> createState() => _FabMenuState();
}

class _FabMenuState extends State<_FabMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _fabController;
  late Animation<double> _fabAnimation;

  bool _isFabMenuVisible = false;

  @override
  void initState() {
    _fabController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    _fabAnimation = _fabController.curvedTweenAnimation(
      begin: 0.0,
      end: 1.0,
    );

    super.initState();
  }

  @override
  void dispose() {
    _fabController.dispose();

    super.dispose();
  }

  void _toggleFabMenu() {
    _isFabMenuVisible = !_isFabMenuVisible;

    if (_isFabMenuVisible) {
      _fabController.forward();
    } else {
      _fabController.reverse();
    }
  }

  void onPress([Function? callback]) {
    _toggleFabMenu();

    callback?.call();
  }

  @override
  Widget build(BuildContext context) {
    final safeAreaBottom = MediaQuery.paddingOf(context).bottom;

    return AnimatedOverlay(
      animation: _fabAnimation,
      color: Colors.black,
      onPress: _toggleFabMenu,
      child: Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.only(right: 26, bottom: 26 + safeAreaBottom),
        child: ExpandedAnimationFab(
          animation: _fabAnimation,
          onPress: _toggleFabMenu,
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
