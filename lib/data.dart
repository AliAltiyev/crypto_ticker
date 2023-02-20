import 'package:flutter/material.dart';

abstract class Data {
  static final List<String> _currencies = [
    'RUB',
    'AFN',
    'EUR',
    'ALL',
    'GBP',
    'DZD',
    'BYN',
    'BZD',
    'USD',
    'EGP',
    'GEL',
  ];

  static List<DropdownMenuItem<String>> getDropDownItems() {
    return _currencies
        .map((String element) => DropdownMenuItem(
              value: element,
              child: Text(element),
            ))
        .toList();
  }

  static List<DropdownMenuItem<String>> getDropDownItemsWithForLoop() {
    List<DropdownMenuItem<String>> items = [];
    for (String value in _currencies) {
      var item = DropdownMenuItem(
        value: value,
        child: Text(value),
      );
      items.add(item);
    }
    return items;
  }

  static List<Text> getCupertinoPickerItems() {
    return _currencies.map((element) => Text(element)).toList();
  }
}
