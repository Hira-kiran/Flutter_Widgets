import 'package:flutter/material.dart';

class SwitchListtileWidget extends StatefulWidget {
  const SwitchListtileWidget({super.key});

  @override
  State<SwitchListtileWidget> createState() => _SwitchListtileWidgetState();
}

class _SwitchListtileWidgetState extends State<SwitchListtileWidget> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Listtile Widget"),
      ),
      body: Column(children: [
        SwitchListTile(
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: const Text("subtitle"),
            title: const Text("Title"),
            value: val,
            secondary: const Icon(Icons.beach_access),
            onChanged: (vall) {
              val = vall;
              setState(() {});
            })
      ]),
    );
  }
}
