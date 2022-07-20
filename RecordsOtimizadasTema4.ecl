EXPORT RecordsOtimizadasTema4 := MODULE
	EXPORT NewLayoutSeguroDefeso := RECORD
    		UNSIGNED3 mes_referencia;
    		STRING2 uf;
    		STRING4 codigo_municipios_siafi;
    		STRING38 cpf_favorecido;
    		STRING14 nis_favorecido;
    		UNSIGNED6 rgp_favorecido;
    		STRING10 nome_favorecido;
    		STRING54 valor_parcela;
	END;
	EXPORT New_File_Seguro_Defeso := DATASET ('~tema4::202201_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)));

	//EXPORT NewLayoutBPC := RECORD
    		//UNSIGNED3 mes_competencia;
    		//UNSIGNED3 mes_referencia;
    		//STRING2 uf;
    		//STRING4 codigo_municipio_siafi;
    		//STRING40 nome_municipio;
    		//INTEGER6 nis_beneficiario;
    		//STRING14 cpf_beneficiario;
    		//STRING40 nome_beneficiario;
    		//INTEGER6 nis_representante_legal;
    		//STRING14 cpf_representante_legal;
   		//STRING40 nome_representante_legal;
    		//UNSIGNED5 numero_beneficio;
    		//STRING3 beneficio_concedido_judicialmente;
    		//STRING7 valor_parcela;
	//END;
	//EXPORT New_File_BPC := DATASET ('~tema4::202201_bpc.csv', NewLayoutBPC, csv(heading(1)));

	EXPORT NewLayoutAuxilioEmergencial := RECORD
    		UNSIGNED3 mes_disponibilizacao;
    		STRING2 uf;
    		UNSIGNED4 codigo_municipio_ibge;
    		STRING28 nome_municipio;
   		STRING11 nis_beneficiario;
    		STRING14 cpf_beneficiario;
    		STRING42 nome_beneficiario;
    		INTEGER6 nis_responsavel;
    		STRING14 cpf_responsavel;
    		STRING40 nome_responsavel;
    		STRING13 enquadramento;
    		STRING2 parcela;
    		STRING32 observacao;
    		STRING7 valor_beneficio;
	END;
	EXPORT New_File_Auxilio_Emergencial := DATASET ('~tema4::202201_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)));

	//EXPORT NewLayoutGarantiaSafra := RECORD
    		//UNSIGNED3 mes_referencia;
   		//STRING2 uf;
    		//STRING4 codigo_municipio_siafi;
    		//STRING30 nome_municipio;
    		//UNSIGNED6 nis_favorecido;
    		//STRING40 nome_favorecido;
    		//STRING7 valor_parcela;
	//END;
	//EXPORT New_File_Garantia_Safra := DATASET ('~tema4::202201_garantiasafra.csv', NewLayoutGarantiaSafra, csv(heading(1)));
END;
