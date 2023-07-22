import 'package:flutter/material.dart';

class ShowTimePickerWidget extends StatefulWidget {
  const ShowTimePickerWidget({super.key});

  @override
  State<ShowTimePickerWidget> createState() => _ShowTimePickerWidgetState();
}

class _ShowTimePickerWidgetState extends State<ShowTimePickerWidget> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ShowTime Picker Widget"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${time!.hour}:${time!.minute}"),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? newtime = await showTimePicker(
                        context: context, initialTime: time!);
                    if (newtime != null) {
                      setState(() {
                        time = newtime;
                      });
                    }
                  },
                  child: const Text("ShowTime"))
            ]),
      ),
    );
  }
}
