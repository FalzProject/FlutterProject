import 'package:flutter/material.dart';
import 'package:idc_project/colors.dart';

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
