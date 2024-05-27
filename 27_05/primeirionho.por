programa
{
	inclua biblioteca Graficos-->g
	inclua biblioteca Teclado-->tec
	inteiro largura
	inteiro altura
	inteiro x=100
	inteiro y=90
	
	funcao inicio()
	{
		renderizar()
	}
	funcao renderizar(){
		largura=g.largura_tela()
		altura=g.altura_tela()
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(largura, altura)
		g.definir_titulo_janela("joia")
		enquanto(verdadeiro){
			limpar()
			desenhar()
			controle()
		}
	}
	funcao limpar(){
		g.definir_cor(-16711936)
		g.desenhar_retangulo(400, 150, 1000, 920, verdadeiro, verdadeiro)
		g.renderizar()
		g.limpar()
	}
	funcao desenhar(){
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_ponto(x, y)
	}
	funcao controle(){
			se(tec.tecla_pressionada(87)){
				y--
			}
			senao se(tec.tecla_pressionada(83)){
				y++
			}
			senao se(tec.tecla_pressionada(65)){
				x--
			}
			senao se(tec.tecla_pressionada(68)){
				x++
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 630; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */