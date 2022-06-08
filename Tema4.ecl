﻿EXPORT Tema4 := MODULE
	EXPORT Layout_Seguro_Defeso := RECORD
		STRING MES_REFERENCIA;		 						
    STRING UF;
    STRING CODIGO_MUNICIPIOS_SIAFI;
    STRING CPF_FAVORECIDO;
		STRING NIS_FAVORECIDO;
		STRING RGP_FAVORECIDO;
		STRING NOME_FAVORECIDO;
		STRING VALOR_PARCELA;
	END;
EXPORT File_Seguro_Defeso := DATASET ('~tema4::202201_segurodefeso.csv', Layout_Seguro_Defeso, csv(heading(1)));



	EXPORT Layout_BPC := RECORD
		STRING MES_COMPETENCIA;							 					
    STRING MES_REFERENCIA;
    STRING UF;
    STRING CODIGO_MUNICIPIO_SIAFI;
		STRING NOME_MUNICIPIO;
    STRING NIS_BENEFICIARIO;
    STRING CPF_BENEFICIARIO;
		STRING NOME_BENEFICIARIO;
    STRING NIS_REPRESENTANTE_LEGAL;
    STRING CPF_REPRESENTANTE_LEGAL;
		STRING NOME_REPRESENTANTE_LEGAL;
    STRING NUMERO_BENEFICIO;
    STRING BENEFICIO_CONCEDIDO_JUDICIALMENTE;
		STRING VALOR_PARCELA;
	END;
EXPORT File_BPC := DATASET ('~tema4::202201_bpc.csv', Layout_BPC, csv(heading(1)));



	EXPORT Layout_Auxilio_Emergencial := RECORD
		STRING MES_DISPONIBILIZACAO;	 						 				
    STRING UF;
    STRING CODIGO_MUNICIPIO_IBGE;
		STRING NOME_MUNICIPIO;
    STRING NIS_BENEFICIARIO;
		STRING CPF_BENEFICIARIO;
    STRING NOME_BENEFICIARIO;
		STRING NIS_RESPONSAVEL;
    STRING CPF_RESPONSAVEL;
		STRING NOME_RESPONSAVEL;
    STRING ENQUADRAMENTO;
		STRING PARCELA;
    STRING OBSERVACAO;
    STRING VALOR_BENEFICIO;
	END;
EXPORT File_Auxilio_Emergencial := DATASET ('~tema4::202201_auxilioemergencial.csv', Layout_Auxilio_Emergencial, csv(heading(1)));


	EXPORT Layout_Garantia_Safra := RECORD
		STRING MES_REFERENCIA;				
    STRING UF;
    STRING CODIGO_MUNICIPIO_SIAFI;
    STRING NOME_MUNICIPIO;
		STRING NIS_FAVORECIDO;
    STRING NOME_FAVORECIDO;
		STRING VALOR_PARCELA;
	END;
EXPORT File_Garantia_Safra := DATASET ('~tema4::202201_garantiasafra.csv', Layout_Garantia_Safra, csv(heading(1)));
END;
