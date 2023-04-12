import 'dart:developer';

import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/widgets/weightAge_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';
import '../widgets/calculate_widjet.dart';
import '../widgets/custom_conteiner_widjet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleColor = AppColors.inactiveColor;
  Color femaleColor = AppColors.inactiveColor;
  double heightValue = 70;
  int weight = 60;

  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.mainColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  'Bmi Calculator',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomContainer(
                      icon: Icons.male,
                      text: 'Male',
                      tus: maleColor,
                      onTap: () {
                        setState(() {
                          maleColor = AppColors.activeColor;
                          femaleColor = AppColors.inactiveColor;
                        });
                      },
                    ),
                    CustomContainer(
                      icon: Icons.female,
                      tus: femaleColor,
                      onTap: () {
                        setState(() {
                          femaleColor = AppColors.activeColor;
                          maleColor = AppColors.inactiveColor;
                        });
                      },
                      text: 'Female',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Height'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              heightValue.toStringAsFixed(0),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                            activeColor: Colors.red,
                            inactiveColor: Colors.grey,
                            thumbColor: Color(0xffFF0F65),
                            max: 220,
                            min: 50,
                            value: heightValue,
                            onChanged: (adamdynBasuusu) {
                              heightValue = adamdynBasuusu;
                              setState(() {});
                            })
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeightAge(
                      tag1: '1',
                      tag2: '2',
                      title: 'Weight',
                      number: weight.toString(),
                      onPressedMines: () {
                        setState(() {
                          setState(() {
                            weight--;
                          });
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          setState(() {
                            weight++;
                          });
                        });
                      },
                    ),
                    WeightAge(
                      tag1: '3',
                      tag2: '4',
                      title: 'Age',
                      number: age.toString(),
                      onPressedMines: () {
                        setState(() {
                          setState(() {
                            age--;
                          });
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          setState(() {
                            age++;
                          });
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: CalculateWidjet(
              text: 'Calculate',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      height: heightValue,
                      kg: weight,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
