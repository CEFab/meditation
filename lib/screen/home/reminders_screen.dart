import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/common/color_extension.dart';
import 'package:meditation/common_widget/round_button.dart';
import 'package:meditation/common_widget/circle_button.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  List dayArr = [
    {"name": "SU", "isSelect": false},
    {"name": "M", "isSelect": false},
    {"name": "T", "isSelect": false},
    {"name": "W", "isSelect": false},
    {"name": "TH", "isSelect": false},
    {"name": "F", "isSelect": false},
    {"name": "S", "isSelect": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              constraints: BoxConstraints(minHeight: context.height - 180),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Text("What time would you like to meditate?",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w700)),
                  const SizedBox(height: 15),
                  Text(
                      "Anytime you can choose, but we recommend\nfirst thing in the morning.",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                      )),
                  const SizedBox(height: 35),
                  // Container with rounded corners
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Color(0xffF5F5F9),
                        borderRadius: BorderRadius.circular(20)),
                    height: 212,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      onDateTimeChanged: (DateTime newDate) {},
                      use24hFormat: false,
                      minuteInterval: 1,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Text("Which day would you like to meditate?",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w700)),
                  const SizedBox(height: 15),
                  Text(
                      "Everyday is best, but we recommend\nstarting with 3 days a week.",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                      )),
                  const SizedBox(height: 35),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: dayArr.map((dObj) {
                        return CircleButton(
                          title: dObj["name"],
                          isSelect: dObj["isSelect"],
                          onPressed: () {
                            setState(() {
                              dayArr[dayArr.indexOf(dObj)]["isSelect"] =
                                  !dObj["isSelect"];
                            });
                          },
                        );
                      }).toList()
                      // [
                      //   for (var item in dayArr)
                      //     CircleButton(
                      //       title: item["name"],
                      //       isSelect: item["isSelect"],
                      //       onPressed: () {
                      //         setState(() {
                      //           item["isSelect"] = !item["isSelect"];
                      //         });
                      //       },
                      //     )
                      // ]
                      )
                ],
              ),
            ),
            const SizedBox(height: 20),
            RoundButton(
              title: "SAVE",
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("NO THANKS",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
