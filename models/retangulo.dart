import 'figura.dart';

class Retangulo extends Figura {
  Retangulo({
    required super.x,
    required super.y,
    required this.largura,
    required this.comprimento,
  });

  final double largura;
  final double comprimento;

  @override
  double area() => largura * comprimento;

  bool isQuadrado() => largura == comprimento;

}
