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
        InkWell(
             onTap: () {
            showDialog(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(
                      'Warning',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanMedium12,
                    ),
                    content: Column(
                      children: [
                        Text(
                          'Are you sure to logout your account?',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanMedium12,
                        ),
                      ],
                    ),
                    actions: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: Get.width * 0.4,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              end: const Alignment(
                                -0.5,
                                0.5,
                              ),
                              begin: const Alignment(
                                0.5,
                                1.5,
                              ),
                              colors: [
                                ColorConstant.indigoA200,
                                ColorConstant.deepPurpleA200,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Yes",
                              style: AppStyle.txtRobotoRomanSemiBold17,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: Get.width * 0.4,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              end: const Alignment(
                                -0.5,
                                0.5,
                              ),
                              begin: const Alignment(
                                0.5,
                                1.5,
                              ),
                              colors: [
                                ColorConstant.indigoA200,
                                ColorConstant.deepPurpleA200,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "No",
                              style: AppStyle.txtRobotoRomanSemiBold17,
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                });
          },
          child: SwitchListTile(
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: const Text("subtitle"),
              title: const Text("Title"),
              value: val,
              secondary: const Icon(Icons.beach_access),
              onChanged: (vall) {
                val = vall;
                setState(() {});
              }),
        )
      ]),
    );
  }
}
