import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.onPressedMines,
    required this.onPressedPlus,
    this.title,
    this.number,
    required this.tag1,
    required this.tag2,
  });
  final void Function()? onPressedMines;
  final void Function()? onPressedPlus;
  final String? title;
  final String? number;
  final Object tag1;
  final Object tag2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width * 0.33,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(children: [
        Text(
          '$title'.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          '$number',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              heroTag: tag1,
              onPressed: onPressedMines,
              child: Icon(
                Icons.remove,
                size: 30,
              ),
            ),
            FloatingActionButton(
              heroTag: tag2,
              onPressed: onPressedPlus,
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
