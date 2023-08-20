import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: AnimatedCrossFade(
                firstChild: Image.network(
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fnature%2F&psig=AOvVaw0alW8VrVRK27GRscD2FWUn&ust=1690197670153000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPjGvPj7pYADFQAAAAAdAAAAABAE"),
                secondChild: Image.network(
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.befunky.com%2Ffeatures%2Fblur-image%2F&psig=AOvVaw0alW8VrVRK27GRscD2FWUn&ust=1690197670153000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPjGvPj7pYADFQAAAAAdAAAAABAI"),
                crossFadeState: _bool
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 2)),
          )
        ],
      ),
    );
  }
}
