function scr_inventory_set(_inventory){
	var _inventory_size=array_length(_inventory),_item,_amount,_array;
	for(var i=0;i<_inventory_size;i++){
		_item=_inventory[i][0];
		_amount=_inventory[i][1];
		if(_amount<0){
			#region
			_array[i]=[/*name*/["-","-","-"],
					   /*amnt*/0,
					   /*imag*/0,
					   /*scpt*/-1
				   ];
				   global.inventory[i]=[-1,-1];
			#endregion
		}else{
			#region
			switch _item{
				case item.jeyjey_colar:
					_array[i]=[["Colar de JeyJey","Collar de JeyJey","JeyJey's necklace"],_amount,1,-1];
					break;
				case item.mother_list:
					_array[i]=[["Lista de temperos","Lista de condimientos","Spices list"],_amount,2,-1];
					break;
				case item.irrigator:
					_array[i]=[["Regador","Regadera","Irrigator"],_amount,3,-1];
					//_array[i]=[["Regador","Regadera","irrigator"],_amount,3,-1];
					break;
				case item.uncle_spices:
					_array[i]=[["Temperos do Tio Big B.","Condimientos de Tío Big B.","Uncle Big B.'s spices"],_amount,4,-1];
					break;
				case item.flowers:
					_array[i]=[["Flor","Flor","Flor"],_amount,5,-1];
					break;
				case item.noah_gift:
					_array[i]=[["Presente para Frtiz","Regalo para Fritz","Gift to Fritz"],_amount,6,-1];
					break;
				case item.love_letter:
					_array[i]=[["Carta de amor","Carta de amor","Love letter"],_amount,7,-1];
					break;
				case item.linus_diary:
					_array[i]=[["Diário do Linus","Diário de Linus","Linus's diary"],_amount,8,-1];
					break;
				case item.pijamas:
					_array[i]=[["Pijamas","Pijamas","Pijamas"],_amount,9,-1];
					break;
				case item.crayon:
					_array[i]=[["Giz de cera","Crayones","Crayons"],_amount,10,-1];
					break;
				case item.basement_key_1:
					_array[i]=[["Chave do porão","Llave del sotano","Basement Key"],_amount,11,-1];
					break;
			}
			#endregion
		}
	}
	return _array;
}