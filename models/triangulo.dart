import 'dart:math';

import 'figura.dart';

class Triangulo extends Figura {
  Triangulo({
    required super.x,
    required super.y,
    required this.face1,
    required this.face2,
    required this.face3,
  });

  final double face1;
  final double face2;
  final double face3;


  @override
  double area() {
    if (!isTriangulo()) return 0;
    final semiperimetro = (face1 + face2 + face3) / 2;
    return sqrt(semiperimetro * (semiperimetro - face1) * (semiperimetro - face2) * (semiperimetro - face3));
  }

  String getTipo() {
    if (!isTriangulo()) {
      return 'Valores não formam um triângulo';
    }

    if (face1 == face2 && face2 == face3) {
      return 'Triangulo Equilatero';
    }
    
    if (face1 == face2 || face1 == face3 || face2 == face3) {
      return 'Triangulo Isosceles';
    }

    return 'Triangulo Escaleno';
  }

  bool isTriangulo() => (face1 + face2 > face3) && (face1 + face3 > face2) && (face2 + face3 > face1);

}
