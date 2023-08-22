import 'package:disney_app/model/disney_character_model.dart';
import 'package:disney_app/ui_classes/colors.dart';
import 'package:disney_app/view/character_page.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.character});
  final Data character;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CharacterPage(
                character: character,
              ))),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  height: 150,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: ColorsApp.lghitColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(
                    character.imageUrl ??
                        'https://demofree.sirv.com/nope-not-here.jpg',
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    character.name ?? 'Not Fonud',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
