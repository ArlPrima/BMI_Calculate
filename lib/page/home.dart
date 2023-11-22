import 'package:bmi/page/result.dart';
import 'package:bmi/tools/bmi_calc.dart';
import 'package:bmi/tools/color.dart';
import 'package:bmi/tools/initial_value.dart';
import 'package:bmi/tools/space.dart';
import 'package:bmi/tools/style.dart';
import 'package:bmi/widget/container.dart';
import 'package:bmi/widget/content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: gray,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space(
                height: size.height * .015,
              ),
              const Center(
                child: Text(
                  'BMI INDEX',
                  style: black36b,
                ),
              ),
              Space(
                height: size.height * .015,
              ),
              const Center(
                child: Image(
                  image: AssetImage('assets/image/home.png'),
                ),
              ),
              Space(
                height: size.height * .015,
              ),
              const Center(
                child: Text(
                  'Kesehatan dimulai dari kesadaran. Cek BMI secara rutin untuk memastikan tubuh sehat Dan ideal.',
                  style: black12m,
                  textAlign: TextAlign.center,
                ),
              ),
              Space(
                height: size.height * .015,
              ),
              //gender
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    cardChild: const GenderCardContents(
                        text: 'MALE', icon: Icons.male, txtColor: black),
                    margin: const EdgeInsets.all(5.0),
                    bgColor: selectedGender == GenderType.male ? yellow : gray,
                  ),
                  ContainerCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    cardChild: const GenderCardContents(
                        text: 'FEMALE', icon: Icons.female, txtColor: black),
                    margin: const EdgeInsets.all(5.0),
                    bgColor:
                        selectedGender == GenderType.female ? yellow : gray,
                  ),
                ],
              ),
              Space(
                height: size.height * .015,
              ),
              ContainerCard(
                  cardChild: bottomCardContents(
                      'HEIGHT', height, 220, 120, CardType.height),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  bgColor: yellow),
              Space(
                height: size.height * .015,
              ),
              ContainerCard(
                  cardChild: bottomCardContents(
                      'WEIGHT', weight, 409, 12, CardType.weight),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  bgColor: yellow),
              Space(
                height: size.height * .015,
              ),
              ContainerCard(
                  cardChild:
                      bottomCardContents('AGE', age, 101, 5, CardType.age),
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  bgColor: yellow),
              Space(
                height: size.height * .03,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    CalculatorBrain brain = CalculatorBrain(height: height, weight: weight);
                    String result = brain.getResult();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  result: result,
                                  status: brain.getStatus(),
                                  interpretation: brain.getInterpretation(),
                                )));
                  },
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: yellow
                ),
                  child: const Center(
                      child: Text(
                    "HITUNG",
                    style: black20sb,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row bottomCardContents(String headingText, int value, int maxValue,
      int minValue, CardType card) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          child: Text(headingText, style: black20sb),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                value.toString(),
                style: black36b,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoundButton(
                  fillColor: gray,
                  height: 30.0,
                  width: 30.0,
                  icon: const Icon(FontAwesomeIcons.minus),
                  callback: () {
                    setState(() {
                      value = value > minValue ? value - 1 : minValue;
                      if (card == CardType.height) {
                        height = value;
                      } else if (card == CardType.weight) {
                        weight = value;
                      } else if (card == CardType.age) {
                        age = value;
                      }
                    });
                  },
                ),
                RoundButton(
                  fillColor: gray,
                  height: 30.0,
                  width: 30.0,
                  icon: const Icon(FontAwesomeIcons.plus),
                  callback: () {
                    setState(() {
                      value = value < maxValue ? value + 1 : maxValue;
                      if (card == CardType.height) {
                        height = value;
                      } else if (card == CardType.weight) {
                        weight = value;
                      } else if (card == CardType.age) {
                        age = value;
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
