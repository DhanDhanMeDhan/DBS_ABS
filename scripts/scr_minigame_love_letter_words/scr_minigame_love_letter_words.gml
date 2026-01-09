function scr_minigame_love_letter_words(){
	var _word=[
		[false,"Crepúsculo",10],[false,"Epifania",10],[false,"Tedio",5],[false,"Dinheiro",-5],[false,"Fama",-5],[false,"Eclesiástico",5],
		[false,"Doces",5],[false,"Vazio",10],[false,"Chaves",-5],[false,"Jardinagem",-5],[false,"Hierarquia",5],[false,"Música",5],
		
		[false,"Contaminação",-5],[false,"Luto",5],[false,"Amor",10],[false,"Oceano",5],[false,"Desastre",-5],[false,"Família",5],
		[false,"Nobreza",-5],[false,"Escuro",5],[false,"Vagalumes",5],[false,"Insetos",-5],[false,"Miséria",-5],[false,"Tempo",10],
		
		[false,"Relógio",5],[false,"Livros",10],[false,"Romanticismo",10],[false,"Neoclássico",10],[false,"Casa",-5],[false,"Pastas",-5],
		[false,"Desgraça",-5],[false,"Tragédia",-5],[false,"Férias",-5],[false,"Inferno",-5],[false,"Ambiente",.5],[false,"Azar",-5],
		
		[false,"Amargo",5],[false,"Carnal",5],[false,"Massacre",-5],[false,"Correio",-5],[false,"Destino",5],[false,"Vibrante",5],
		[false,"Valentim",10],[false,"Apaixonado",10],[false,"Casamento",10],[false,"Papel",-5],[false,"Calor",5],[false,"Alegria",5],
		
		[false,"Retrato",5],[false,"Sonho",5],[false,"Guerra",5],[false,"Coração",10],[false,"Vitalidade",5],[false,"Descontentamento",-5],
		[false,"Sol",-5],[false,"Corpo",-5],[false,"Rosas",10],[false,"Flores",10],[false,"Chocolate",5],[false,"Pudim",10],
		
		[false,"Amigo",-5],[false,"Despertar",-5],[false,"Desenho",-5],[false,"Espaço",-5],[false,"Jóias",-5],[false,"Lar",5],
		[false,"Infância",5],[false,"Alvorada",10],[false,"Pragmático",10],[false,"Beleza",5],[false,"Inteligência",10],[false,"Conhecimento",10],
		
		[false,"Cognição",10],[false,"Omelete",-5],[false,"Visão",5],[false,"Coelho",10],[false,"Raposa",-5],[false,"Lobo",10],
		[false,"Uniforme",-5],[false,"Esmeralda",-5],[false,"Obsidiana",10],[false,"Lua",10],[false,"Aurora",10],[false,"Cigarras",-5],
		
		[false,"Lacraias",-5],[false,"Mariposas",5],[false,"Urso",5],[false,"Rosa",5],[false,"Rubi",-5],[false,"Esposa",10],
		[false,"Foto",5],[false,"Nação",-5],[false,"Brincos",-5],[false,"Viajem",-5],[false,"Ligados",10],[false,"Luta",-5],
		
		[false,"Violência",-5],[false,"Luz",5],[false,"Renacentismo",10],[false,"Arvores",5],[false,"Floresta",10],[false,"Natureza",5],
		[false,"Rochas",5],[false,"Altura",-5],[false,"Cair",-5],[false,"Conexão",10],[false,"Olhos",10],[false,"Sorriso",10],
		
		[false,"Gato",5],[false,"Fogo",-5],[false,"Bondade",5],[false,"Maldade",-5],[false,"Diálogo",5],[false,"Você",10],
		[false,"Eu",10],[false,"Nós",10],[false,"Esquecer",-5],[false,"Dizer",5],[false,"Espinhos",-5],[false,"Pétalas",5]
	];
	var _words_num=array_length(_word);
	var i=0; repeat 10{
		var j=0; repeat 2{
			var k=0; while(k<6){
				randomize()
				var _num=floor(random_range(0,_words_num));
				if(!_word[_num][0]){
					_words[i][j][k][0]=_word[_num][1];
					_words[i][j][k][1]=_word[_num][2];
					_word[_num][0]=true;
					k++;
				}
			}
			j++;
		}
		i++;
	}
	return _words;
}