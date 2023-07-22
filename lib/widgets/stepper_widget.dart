import 'package:flutter/material.dart';

class SpacerWidget extends StatefulWidget {
  const SpacerWidget({super.key});

  @override
  State<SpacerWidget> createState() => _SpacerWidgetState();
}

class _SpacerWidgetState extends State<SpacerWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper Widget"),
      ),
      body: Column(
        children: [
          Stepper(
            // type: StepperType.horizontal,
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep < 2) {
                setState(() {
                  _currentStep = _currentStep + 1;
                });
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() {
                  _currentStep = _currentStep - 1;
                });
              }
            },
            onStepTapped: (value) {
              setState(() {
                _currentStep = value;
              });
            },
            // for making custom cancel and continue button
            controlsBuilder: (context, details) {
              return Row(
                children: [
                  ElevatedButton(
                      onPressed: details.onStepContinue,
                      child: const Text("Continue")),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                      onPressed: details.onStepCancel,
                      child: const Text("Cancel"))
                ],
              );
            },
            steps: [
              Step(
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled,
                  isActive: _currentStep >= 0,
                  label: const Text("This is lable"),
                  subtitle: const Text("This is step 1"),
                  title: const Text("Step1"),
                  content: const Text("Plz Signup your account")),
              Step(
                  isActive: _currentStep >= 1,
                  state: _currentStep >= 1
                      ? StepState.complete
                      : StepState.disabled,
                  label: const Text("This is lable"),
                  subtitle: const Text("This is step 2"),
                  title: const Text("Step1"),
                  content: const Text("Plz Login your account")),
              Step(
                  state: _currentStep >= 2
                      ? StepState.complete
                      : StepState.disabled,
                  isActive: _currentStep >= 2,
                  label: const Text("This is lable"),
                  subtitle: const Text("This is step 3"),
                  title: const Text("Step1"),
                  content: const Text("Logout account"))
            ],
          )
        ],
      ),
    );
  }
}
