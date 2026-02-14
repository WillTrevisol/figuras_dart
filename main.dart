import 'models/export.dart';

void main() {
  
  final List<Figura> figuras = <Figura>[];
  final Circulo circulo = Circulo(x: 3, y: 4, raio: 3);
  figuras.add(circulo);

  print('\n');
  print('Criado Circulo em X=${circulo.x} Y=${circulo.y}');
  print('Area: ${circulo.area()}');
  print('Diametro: ${circulo.diametro()}');

  final Retangulo retangulo1 = Retangulo(x: 1, y: 2, largura: 4, comprimento: 4);
  figuras.add(retangulo1);

  print('\n');
  print('Criado Retangulo em X=${retangulo1.x} Y=${retangulo1.y}');
  print('Area: ${retangulo1.area()}');
  _imprimeSeQuadrado(retangulo1.isQuadrado());

  final Retangulo retangulo2 = Retangulo(x: 9, y: 5, largura: 3, comprimento: 7);
  figuras.add(retangulo2);

  print('\n');
  print('Criado Retangulo em X=${retangulo2.x} Y=${retangulo2.y}');
  print('Area: ${retangulo2.area()}');
  _imprimeSeQuadrado(retangulo2.isQuadrado());

  final Triangulo triangulo = Triangulo(x: 5, y: 6, face1: 3, face2: 3, face3: 4);
  figuras.add(triangulo);

  print('\n');
  print('Criado Triangulo em X=${triangulo.x} Y=${triangulo.y}');
  print('Area: ${triangulo.area()}');
  print(triangulo.getTipo());
  
  print('\n');
  print('Area total dos objetos: ${figuras.fold(0, (num valorAnterior, Figura figura) => valorAnterior + figura.area())}');
}

void _imprimeSeQuadrado(bool isQuadrado) {
  if (isQuadrado) {
    print('Eh um quadrado!');
    return;
  }

  print('Nao eh um quadrado!');
}