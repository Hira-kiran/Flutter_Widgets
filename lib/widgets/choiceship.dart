import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChoiceChip Widget"),
      ),
      body: Column(children: [
        Center(
          child: ChoiceChip(
            avatar: const Icon(Icons.phone),
            label: const Text("Phone"),
            selected: isSelected,
            onSelected: (value) {
              setState(() {
                isSelected = value;
              });
            },
          ),
        )
      ]),
    );
  }
}
