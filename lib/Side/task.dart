import 'package:flutter/material.dart';

const Color kYellowLight = Color(0xFFFFF7EC);
const Color kYellow = Color(0xFFFAF0DA);
const Color kYellowDark = Color(0xFFEBBB7F);

const Color kRedLight = Color(0xFFFCF0F0);
const Color kRed = Color(0xFFFBE4E6);
const Color kRedDark = Color(0xFFF08A8E);

const Color kBlueLight = Color(0xFFEDF4FE);
const Color kBlue = Color(0xFFD9EFFA); 
const Color kBlueDark = Color(0xFF64B5F6);

const Color kGreenLight = Color(0xFFF1F8E9);
const Color kGreen = Color(0xFFDEFCDE);
const Color kGreenDark = Color(0xFF4CAF50);

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;
  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(iconData:  Icons.person_2_rounded,
      title: 'Title',
      bgColor: kYellowLight,
      iconColor: kYellowDark,
      btnColor: kYellow,
      left: 0,
      done: 0,
      ),
      Task(iconData:  Icons.lock_clock_outlined,
      title: 'Title',
      bgColor: kRedLight,
      iconColor: kRedDark,
      btnColor: kRed,
      left: 0,
      done: 0,
      ),
      Task(iconData:  Icons.play_lesson_outlined,
      title: 'Title',
      bgColor: kBlueLight,
      iconColor: kBlueDark,
      btnColor: kBlue,
      left: 0,
      done: 0,
      ),
      Task(iconData:  Icons.energy_savings_leaf_outlined,
      title: 'Title',
      bgColor: kGreenLight,
      iconColor: kGreenDark,
      btnColor: kGreen,
      left: 0,
      done: 0,
      ),
      Task(isLast: true)
    ];
  }
}
