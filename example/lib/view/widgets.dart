import 'package:flutter/material.dart';
import 'package:responsiveness_handler/responsiveness_handler.dart';

class WidgetView extends StatefulWidget {
  const WidgetView({super.key});

  @override
  State<WidgetView> createState() => _WidgetViewState();
}

class _WidgetViewState extends State<WidgetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //useage for textsize
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
        ],
      ),
    );
  }
}
