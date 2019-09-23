import 'package:roguelike/mundo.dart';
import 'package:roguelike/personagem.dart';
import 'package:roguelike/ponto_2d.dart';


class CriaturaDocil extends Personagem
{
  static String SIMBOLO_CRIATURA_DOCIL = "C";
 
  CriaturaDocil(Ponto2D posicao, String simbolo) : super(posicao, simbolo);

  @override
  void atualizar(Mundo mundo) 
  {
    //Obter a posição do jogador
    int jogadorPosicaoX = mundo.jogador.posicao.x;
    int jogadorPosicaoY = mundo.jogador.posicao.y;

    
    int posicaoCriaturaDocilX ;
    int posicaoCriaturaDocilY ;

    for (var i = 0; i < mundo.criaturasDoceis.length; i++)
    {
      if(mundo.criaturasDoceis!=null)
      {
        posicaoCriaturaDocilX = mundo.criaturasDoceis[i].posicao.x;
        posicaoCriaturaDocilY = mundo.criaturasDoceis[i].posicao.y;
        if(posicaoCriaturaDocilX==jogadorPosicaoX && posicaoCriaturaDocilY==jogadorPosicaoY)
        {
          mover(mundo,2,0);
        }
      }
      
    }
  }
}