import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/features/extensions/animation.dart';
import '/features/extensions/widgets/animated_overlay.dart';
import '/features/extensions/widgets/fab.dart';
import '/features/extensions/widgets/scaffold.dart';

part 'fab_menu.dart';
//part 'sections/pokemon_grid.dart';

@RoutePage()
class PokedexPage extends StatefulWidget {
  const PokedexPage({super.key});

  @override
  State<StatefulWidget> createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  @override
  Widget build(BuildContext context) {
    return PokeballScaffold(
      body: const Stack(
        children: [
          //_PokemonGrid(),
          _FabMenu(),
        ],
      ),
    );
  }
}
