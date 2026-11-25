select count(idinscrito) from Inscrito
select count(idaluno) from aluno
select count(idcandidatura) from candidatura

select * from aluno

select * from AccaoModulo -- bridge? idtipoformacao



select * from SessaoInscrito -- 778006
select * from AccaoCronograma --?? 
select * from Accao --SIM
select * from Aluno -- SIM 26.047
select * from Inscrito --SIM 18.862
select * from Candidatura -- APENAS 223???
select * from InscritoModulo -- TALVEZ 
select * from CentroPolo --- CERTAMENTE NECESSÁRIO, CESAE - Aveiro, coimbra etc, 
select * from auxarea -- área formação: tec, humannas, linuas 
select * from AuxTipoHorario -- laboral, pós laboral, misto 
select * from AuxAreaTecnologicaFormacao --Análise de dados, Robótica, Cibersegurança etc...
select * from AuxAreaCIME -- turismo, direito, finanças... 
select * from AuxHabilitacao -- ???? 12 ano, bacharelado, mestrado, <4anos 




-- qual a diferença de Inscrito e Aluno? 


select * from PreInscricaoContactos 
select * from PreInscricaoSite

select count(idcandidatura) from Accao
select count(idaccao) from Accao




select * from AccaoCronograma -- registro de atividade em sala, "pl 06 e 07", "pl08"
where Designacao like '%Analyst%'


select * from modulo
select * from certificacao
select * from pessoal
where nome like '%faria%'
