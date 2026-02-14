import 'dart:math';

import 'export.dart';

class Circulo extends Figura {
  Circulo({
    required super.x,
    required super.y,
    required this.raio,
  });

  final double raio;
  
  @override
  double area() => pi * (raio * raio);

  double diametro() => 2 * raio;

  double circunferencia() => 2 * pi * raio;

}
