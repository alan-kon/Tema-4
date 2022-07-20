IMPORT $,STD;

// Auxilio Emergencial

new_layout := RECORD
	UNSIGNED recid;
	STRING beneficio;
	$.RecordsOtimizadasTema4.NewLayoutAuxilioEmergencial;
END;

new_layout MyTransf($.RecordsOtimizadasTema4.NewLayoutAuxilioEmergencial Le, UNSIGNED cnt) := TRANSFORM
	SELF.recid := cnt;
	SELF.beneficio := 'AE';
  	SELF := Le;
END;

newds := PROJECT($.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial ,MyTransf(LEFT,COUNTER));

// OUTPUT(newds,NAMED('row_id_added'));

sortds := SORT(newds,nome_beneficiario);

// OUTPUT(sortds,NAMED('sorted'));

AuxEmergTable := TABLE(sortds,{nis_beneficiario,nome_beneficiario,beneficio});

// OUTPUT(AuxEmergTable, NAMED('tabela_nao_formatada'));

beneficiario_auxilio_emergencial := DEDUP(AuxEmergTable, nome_beneficiario);

OUTPUT(beneficiario_auxilio_emergencial, NAMED('beneficiario_auxilio_emergencial'));

// SEGURO DEFESO

new_layoutsd := RECORD
	UNSIGNED recid;
	STRING2 beneficio;
	$.RecordsOtimizadasTema4.NewLayoutSeguroDefeso;
END;

new_layoutsd MyTransfsd($.RecordsOtimizadasTema4.NewLayoutSeguroDefeso Le, UNSIGNED cnt) := TRANSFORM
	SELF.recid := cnt;
	SELF.beneficio := 'SD';
  	SELF := Le;
END;

newdssd := PROJECT($.RecordsOtimizadasTema4.New_File_Seguro_Defeso ,MyTransfsd(LEFT,COUNTER));

// OUTPUT(newdssd,NAMED('row_id_added'));

sortdssd := SORT(newdssd,nome_favorecido);

// OUTPUT(sortdssd,NAMED('sorted'));

segurodefesotable := TABLE(sortdssd,{nis_favorecido,nome_favorecido,beneficio});

// OUTPUT(segurodefesotable, NAMED('tabela_nao_formatada'));

favorecido_seguro_defeso := DEDUP(segurodefesotable, nome_favorecido);

OUTPUT(favorecido_seguro_defeso, NAMED('favorecido_seguro_defeso'));
