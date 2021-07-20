import 'package:e_service_app/model/filter_tags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewmodel extends ChangeNotifier {
  int index;
  bool isOpen = false;
  bool isShown = false;
  int tagCurrentInde;

  void setVisiblity(value) {
    isOpen = value;
    notifyListeners();
  }

  List<Tag> filterTags = [
    Tag(
      "Type",
      ["Elictrical", "Mechanical"],
      "",
      Icon(
        FontAwesomeIcons.list,
        size: 14.0,
        color: Colors.white,
      ),
    ),
    Tag(
      "Location",
      ["Johor Bahru", "Kuala lampur"],
      "",
      Icon(
        FontAwesomeIcons.locationArrow,
        size: 14.0,
        color: Colors.white,
      ),
    ),
    Tag(
      "Rate",
      ["5", "4", "3", "2", "2"],
      "5",
      Icon(
        FontAwesomeIcons.star,
        size: 14.0,
        color: Colors.white,
      ),
    ),
    Tag(
      "Payment",
      ["Cash", "Credit Card"],
      "",
      Icon(
        FontAwesomeIcons.moneyCheck,
        size: 14.0,
        color: Colors.white,
      ),
    )
  ];
}
