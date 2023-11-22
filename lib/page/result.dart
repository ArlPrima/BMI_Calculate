import 'package:bmi/tools/color.dart';
import 'package:bmi/tools/space.dart';
import 'package:bmi/tools/style.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final String result;
  final String status;
  final String interpretation;

  const ResultPage({super.key,
      required this.result,
      required this.status,
      required this.interpretation,
      }
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: gray,
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space(
                height: size.height * .015,
              ),
              const Text(
                'HASIL',
                style: black36b,
              ),
              Space(
                height: size.height * .015,
              ),
              const Image(
                image: AssetImage('assets/image/result.png'),
              ),
              Space(
                height: size.height * .015,
              ),
            ],
          ),
        )
      )
    );
  }
}