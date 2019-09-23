import 'package:roguelike/mundo.dart';
import 'package:roguelike/personagem.dart';
import 'package:roguelike/ponto_2d.dart';


class CriaturaAgressiva extends Personagem
{
  static String SIMBOLO_CRIATURA_AGRESSIVA = "L";

  CriaturaAgressiva(Ponto2D posicao, String simbolo) : super(posicao, simbolo);
 
  @override
  void atualizar(Mundo mundo) 
  {
    //Obter a posição do jogador
    int jogadorPosicaoX = mundo.jogador.posicao.x;
    int jogadorPosicaoY = mundo.jogador.posicao.y;
    int posicaoCriaturaAgressivaX, posicaoCriaturaAgressivaY, resultadoX, resultadoY;
    
    if(mundo.criaturasAgressivas != null && mundo.criaturasAgressivas.isNotEmpty)
    {
      for (var i = 0; i < mundo.criaturasAgressivas.length; i++)
      {
        posicaoCriaturaAgressivaX = mundo.criaturasAgressivas[i].posicao.x;
        posicaoCriaturaAgressivaY = mundo.criaturasAgressivas[i].posicao.y;

        resultadoX = jogadorPosicaoX - posicaoCriaturaAgressivaX;
        resultadoY = jogadorPosicaoY - posicaoCriaturaAgressivaY;
       
        if(resultadoX<0)         {mover(mundo,1,0); }
        else if (resultadoX>0)   {mover(mundo,-1,0); } 
        else if (resultadoY<0)   {mover(mundo,0,-1); } 
        else if (resultadoY>0)   {mover(mundo,0,1); } 

      }
    }
  }


}