import 'package:disney_app/extensions/size.dart';
import 'package:disney_app/model/disney_character_model.dart';
import 'package:disney_app/ui_classes/colors.dart';
import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key, required this.character});
  final Data character;

  @override
  Widget build(BuildContext context) {
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
      body: ListView(children: [
        Image.network(
          character.imageUrl ?? '',
          height: context.getHeight / 3,
          width: context.getWidth,
          fit: BoxFit.contain,
        ),
        Column(
          children: [
            const Text(
              'Moves:',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            for (final film in character.films!) ...[
              Text(
                film,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              )
            ]
          ],
        )
      ]),
    );
  }
}
