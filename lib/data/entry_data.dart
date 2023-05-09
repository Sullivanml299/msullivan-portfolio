//TODO: define a struct for entry data and create list of entries
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class EntryData {
  String title;
  String description;
  String imgPath;
  String link;
  String linkText;
  EntryData({
    required this.title,
    required this.description,
    required this.imgPath,
    required this.link,
    required this.linkText,
  });
}
