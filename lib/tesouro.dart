import 'dart:math';

import 'package:roguelike/mundo.dart';
import 'package:roguelike/personagem.dart';
import 'package:roguelike/ponto_2d.dart';

class Tesouro extends Personagem
{
  static String SIMBOLO_TESOURO = "G";
  int _qtdMoedas = 0;
  int get qtdMoedas => _qtdMoedas;

  static int min = 50;
  static int max = 100;

  int moedasNoBau = min + (Random(1).nextInt(max-min)); 
 
  Tesouro(Ponto2D posicao, String simbolo) : super(posicao, simbolo);


  @override
  void atualizar(Mundo mundo) {
    for (int i=0; i<mundo.tesouros.length; i++)
    {
      if(mundo.tesouros[i].posicao.toString() == mundo.jogador.posicao.toString())
      {
        mundo.tesouros[i].simbolo = null;
        mundo.tesouros[i].posicao = null;
      }
    }
  }
  
}