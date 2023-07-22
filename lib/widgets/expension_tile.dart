import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Tile Widget"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              expandedAlignment: Alignment.topLeft,
              leading: const Icon(Icons.leaderboard_outlined),
              title: const Text("See More"),
              children: const [
                Text("Pizza"),
                Text("Pasta"),
                Text("Burger"),
                Text("Shawrma"),
                Text("Macroni"),
              ],
            )
          ]),
    );
  }
}
