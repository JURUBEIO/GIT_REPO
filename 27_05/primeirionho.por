programa
{
	inclua biblioteca Graficos-->g
	inclua biblioteca Teclado-->tec
	inclua biblioteca Mouse-->m
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
			outras_tec()
			limpar()
			controle()
			desenhar()
			desenhar1()
		}
	}
	funcao limpar(){
		g.renderizar()
		g.limpar()
	}
	funcao desenhar(){
		g.definir_cor(g.COR_PRETO)
		g.desenhar_ponto(x, y)
	}
	funcao desenhar1(){
		g.definir_cor(g.COR_AZUL)
		g.desenhar_retangulo(x, y, 120, 120, falso, verdadeiro)
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
	funcao outras_tec(){
		se(tec.tecla_pressionada(tec.TECLA_ESC)){
			g.encerrar_modo_grafico()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1068; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */