import 'package:bmi/tools/color.dart';
import 'package:bmi/tools/space.dart';
import 'package:bmi/tools/style.dart';
import 'package:bmi/widget/container.dart';
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
              const Text(
                'HASIL',
                style: black36b,
              ),
              Space(
                height: size.height * .015,
              ),
              const Center(
                child: Image(
                  image: AssetImage('assets/image/result.png'),
                ),
              ),
              ContainerCard(margin: const EdgeInsets.fromLTRB(50, 0, 50, 20), bgColor: yellow,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 60),
                        child: Center(
                            child: Text(
                          status,
                          style: black20sb,
                        ))),
                    Center(
                        child: Text(result, style: black64b)),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 40 , 10, 20),
                        child: Text(
                          interpretation,
                          style: black14sb,
                        ),
                      ),
                    )
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Center(
                    child: ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  },
                               style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: yellow),
                  child: const Center(
                      child: Text(
                    "HITUNG ULANG",
                    style: black14sb,
                  )),),
                  ),
                )
            ],
          ),
        )
      )
    );
  }
}