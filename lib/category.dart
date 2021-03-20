// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

const double _category_height = 100;
const double _border_radius = _category_height / 2;

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final IconData icono;
  final String nombre;
  final Color colorido;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  const Category(this.nombre, this.colorido, this.icono);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: _category_height,
        padding: EdgeInsets.all(8),
        child: InkWell(
          onTap: () {
            print('Me toquetearon!');
          },
          splashColor: colorido,
          highlightColor: colorido,
          borderRadius: BorderRadius.circular(_border_radius),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  icono,
                  size: 60,
                ),
              ),
              Center(
                  child: Text(
                nombre,
                style: TextStyle(fontSize: 24),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
