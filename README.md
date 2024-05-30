<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO:
This package helps manage app layout responsively by redering all widgets based on the device size and orientation, It has inbuilt extensions for all widgets which can be applied easily hereby giving the widget/component a dynamic value in size. This is then rendered responsively based on the media query data gotten from the device

## Features

TODO:
Simply apply the extensions on the widget size parameters such as (fontSize, height, width) when creating your widgets

## Getting started

TODO:
Runs on android, IOS and web

## Usage

TODO:
render your widget size parameters with the extensions provided by the pacakage.

```dart
         Text(
            "data",
            style: TextStyle(fontSize: 50.fSize),
          ),

          //useage for sized box
          SizedBox(
            height: 100.h,
          ),

          //useage for container and image
          Container(
            height: 100.h,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "name",
              height: 20.adaptSize,
            ),
          )
```
