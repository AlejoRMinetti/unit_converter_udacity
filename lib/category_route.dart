// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:unit_converter_udacity/category.dart';

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final listView = Container(
        color: Colors.green.shade100,
        child: ListView.builder(
            itemCount: _categoryNames.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Category(
                    name: _categoryNames[index],
                    color: _baseColors[index],
                    iconLocation: Icons.add_to_home_screen_outlined),
              );
            }));

    final appBar = AppBar(
      backgroundColor: Colors.green.shade100,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
