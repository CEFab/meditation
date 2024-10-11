import 'package:flutter/material.dart';
import 'package:meditation/common/color_extension.dart';

class ChooseTopicScreen extends StatefulWidget {
  const ChooseTopicScreen({super.key});

  @override
  State<ChooseTopicScreen> createState() => _ChooseTopicScreenState();
}

class _ChooseTopicScreenState extends State<ChooseTopicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What Brings you",
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "to Silent Moon?",
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 28,
            ),
          )
        ],
      ),
    );
  }
}
