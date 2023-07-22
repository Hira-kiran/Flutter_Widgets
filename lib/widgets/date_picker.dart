import 'package:flutter/material.dart';

class ShowDatePickerWidget extends StatefulWidget {
  const ShowDatePickerWidget({super.key});

  @override
  State<ShowDatePickerWidget> createState() => _ShowDatePickerWidgetState();
}

class _ShowDatePickerWidgetState extends State<ShowDatePickerWidget> {
  DateTime? dateTime = DateTime(2023);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ShowDate Picker Widget"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${dateTime!.day}-${dateTime!.month}-${dateTime!.year}"),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? newdateTime = await showDatePicker(
                        context: context,
                        initialDate: dateTime!,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2040));
                    if (newdateTime != null) {
                      setState(() {
                        dateTime = newdateTime;
                      });
                    }
                  },
                  child: const Text("Show Date"))
            ]),
      ),
    );
  }
}
