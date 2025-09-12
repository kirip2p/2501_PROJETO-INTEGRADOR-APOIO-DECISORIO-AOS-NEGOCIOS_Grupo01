--1-Gasto total do FUNDEB por estado – agregação ROLL-UP do nível municipal para estadual
select SUM(CAST(qt_valor_consolidado_fundeb AS decimal(20,2))) as valor_consolidado, 
SUM(CAST(qt_matricula_fund_censo AS decimal(10,2))) as matricula, 
nm_unidade_federal_censo
from v_avaliacao_2013
GROUP BY nm_unidade_federal_censo

--2-Pesquisa das médias de Língua Portuguesa e Matemática para todos os municípios por ano - operação em fatiamento "dice"
select qt_media_5_lp_saeb,qt_media_5_mt_saeb,qt_media_9_lp_saeb,qt_media_9_mt_saeb, nm_municipio_saeb,dt_ano_fundeb
from avaliacao_municipio where dt_ano_censo='2013'


--3-Pesquisa das médias de Língua Portuguesa e Matemática para cada município em todos os anos - operação em fatiamento "slice"
select qt_media_5_lp_saeb,qt_media_5_mt_saeb,qt_media_9_lp_saeb,qt_media_9_mt_saeb, nm_municipio_saeb, dt_ano_fundeb 
from avaliacao_municipio where nm_municipio_censo='Recife'

--4-Quantidade de matriculas para todos os municípios por ano - operação em fatiamento "dice"
select qt_valor_consolidado_fundeb, qt_matricula_fund_censo, nm_municipio_saeb,dt_ano_fundeb
from avaliacao_municipio where dt_ano_censo='2013'

--5-Gasto total do FUNDEB por estado – agregação em nível municipal ao longo dos anos
select qt_valor_consolidado_fundeb, qt_matricula_fund_censo, nm_municipio_saeb,dt_ano_fundeb
from avaliacao_municipio where nm_municipio_censo='Recife'