import 'package:disney_app/ui_classes/colors.dart';
import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title, required this.contentList});
  final String title;
  final List<Widget> contentList;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: ColorsApp.lghitColor,
      color: ColorsApp.lghitBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: RoundedExpansionTile(
        duration: const Duration(milliseconds: 300),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(title),
        children: contentList,
      ),
    );
  }
}
