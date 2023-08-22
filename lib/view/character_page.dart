import 'package:disney_app/extensions/size.dart';
import 'package:disney_app/model/disney_character_model.dart';
import 'package:disney_app/ui_classes/colors.dart';
import 'package:disney_app/widgets/ExpansionTile_card.dart';
import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key, required this.character});
  final Data character;

  @override
  Widget build(BuildContext context) {
    List<Widget> films = List.generate(
        character.films?.length ?? 0,
        (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(character.films![index])));
    List<Widget> tvShows = List.generate(
        character.tvShows?.length ?? 0,
        (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(character.tvShows![index])));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsApp.blue,
        title: Text(
          character.name ?? '',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: ColorsApp.blue,
      body: ListView(
        children: [
          Image.network(
            character.imageUrl ?? '',
            height: context.getHeight / 3,
            width: context.getWidth,
            fit: BoxFit.contain,
          ),
          Column(
            children: [
              CardWidget(title: 'Moves', contentList: films),
              Divider(
                height: 20,
                color: ColorsApp.lghitBlue,
              ),
              CardWidget(title: 'TV Shows', contentList: tvShows),
            ],
          )
        ],
      ),
    );
  }
}
