import 'package:disney_app/data/api_data.dart';
import 'package:disney_app/model/disney_character_model.dart';
import 'package:disney_app/ui_classes/colors.dart';
import 'package:disney_app/widgets/character_card.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.blue,
      body: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsApp.blue,
                ),
              ),
            ),
          ),
          FutureBuilder(
            future: Service().getDisneyCharacter(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: LoadingAnimationWidget.newtonCradle(
                    color: Colors.white,
                    size: 150,
                  ),
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                final character = snapshot.data;

                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    if (character?.data?.isEmpty ?? true) {
                      return const Text("is empty");
                    }
                    return CharacterCard(
                      character: character?.data?[index] ?? Data(),
                    );
                  },
                  itemCount: character?.data?.length,
                );
              } else {
                return const Text("Sorry.. ");
              }
            },
          )
        ],
      ),
    );
  }
}
