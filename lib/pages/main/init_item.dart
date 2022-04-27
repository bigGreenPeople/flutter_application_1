import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/home.dart';
import 'package:flutter_application_1/pages/subject/subject.dart';

import 'main_bar_item.dart';

List<BottomBarItem> items = [
  BottomBarItem("home", "首页"),
  BottomBarItem("subject", "书影音"),
  BottomBarItem("group", "小组"),
  BottomBarItem("mall", "市集"),
  BottomBarItem("profile", "我的"),
];

List<Widget> pages = [
  const HomePage(),
  HYSubjectPage(),
  HYSubjectPage(),
  HYSubjectPage(),
  HYSubjectPage(),
];
