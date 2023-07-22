import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Widget"),
      ),
      body: Wrap(
          // by default see in the form of row

          direction: Axis.vertical, // for column
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
              child: const Center(child: Text("container")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
              child: const Center(child: Text("container")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Center(child: Text("container")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Center(child: Text("container")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
              child: const Center(child: Text("container")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
              child: const Center(child: Text("container")),
            )
          ]),
    );
  }
}
