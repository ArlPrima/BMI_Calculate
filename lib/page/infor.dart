import 'package:bmi/tools/space.dart';
import 'package:bmi/tools/style.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Space(
              height: size.height * .015,
            ),
            const Center(
              child: Text(
                'BMI INFO',
                style: black36b,
              ),
            ),
            Space(
              height: size.height * .03,
            ),
            const Image(
              image: AssetImage("assets/image/BMI.png"),
            ),
            Space(
              height: size.height * .03,
            ),
            const Text(
              'Body Mass Index (BMI) adalah sebuah pengukuran yang umum digunakan untuk menilai berat badan seseorang dalam hubungannya dengan tinggi badan. Meskipun tidak memberikan informasi lengkap tentang komposisi tubuh atau distribusi lemak, BMI memiliki beberapa manfaat:',
              style: black12m,
            ),
            Space(
              height: size.height * .015,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/image/1.png")),
                  Space(
                    width: size.width * .15,
                  ),
                  const Text(
                    'Penilaian Berat Badan',
                    style: black14sb,
                  )
                ],
              ),
            ),
            Space(
              height: size.height * .011,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/image/2.png")),
                  Space(
                    width: size.width * .15,
                  ),
                  const Text(
                    'Deteksi Dini Risiko Kesehatan',
                    style: black14sb,
                  )
                ],
              ),
            ),
            Space(
              height: size.height * .011,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/image/3.png")),
                  Space(
                    width: size.width * .15,
                  ),
                  const Text(
                    'Monitoring Perubahan BB',
                    style: black14sb,
                  )
                ],
              ),
            ),
            Space(
              height: size.height * .011,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/image/4.png")),
                  Space(
                    width: size.width * .15,
                  ),
                  const Text(
                    'Pemantauan Kesehatan Umum',
                    style: black14sb,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
