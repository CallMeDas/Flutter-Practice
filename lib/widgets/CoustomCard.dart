import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/FbFeed.dart';

class Coustomcard extends StatelessWidget {
  Color colors;
  String name;
  EdgeInsetsGeometry margin;
  Coustomcard({super.key, required this.colors, required this.margin, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: colors, borderRadius: BorderRadius.circular(12)),
            margin: margin,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              left: 20,
              bottom: 20,
              child: Container(
                padding: EdgeInsets.only(right: 20),
                width: MediaQuery.of(context).size.width / 3,
                child: Text(
                  name,
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Colors.white),
                ),
              )),
        ],
      ),
    );

  }
}