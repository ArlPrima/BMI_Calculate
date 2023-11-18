import 'dart:math';

class CalculatorBrain {

  final int height;
  final int weight;

  double _bmi = 0;

  CalculatorBrain({required this.height, required this.weight});

  String getResult() {
    _bmi = weight / pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getStatus(){
    if(_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5 ){
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation(){
    if(_bmi >= 25) {
      return "Anda memiliki berat badan lebih tinggi dari biasanya! Cobalah berolahraga sebagai bagian dari rutinitas harian Anda.";
    } else if (_bmi > 18.5 ){
      return "Kerja bagus! Anda memiliki berat badan normal. Teruslah berolahraga!";
    } else {
      return "Anda memiliki berat badan lebih rendah dari normal! Cobalah untuk mengonsumsi lebih banyak kalori.";
    }
  }
}