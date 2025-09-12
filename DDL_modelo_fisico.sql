--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      P_DU0110_BGEO_SIGSP_GEOPORTAL
--
-- Date Created : Monday, September 08, 2025 16:07:03
-- Target DBMS : PostgreSQL 10.x-12.x
--

-- 
-- TABLE: avaliacao_municipio 
--

CREATE TABLE avaliacao_municipio(
    cd_identificador                      integer           NOT NULL,
    nm_municipio_saeb                     varchar(254),
    cd_municipio_saeb                     varchar(30),
    cd_unidade_federal_saeb               varchar(30),
    nm_unidade_federal_saeb               varchar(254),
    tp_dependencia_administrativa_saeb    varchar(40),
    tx_localizacao_saeb                   varchar(10),
    qt_media_5_lp_saeb                    numeric(10, 0),
    qt_media_5_mt_saeb                    numeric(10, 0),
    qt_media_9_lp_saeb                    numeric(10, 0),
    qt_media_9_mt_saeb                    numeric(10, 0),
    nm_municipio_fundeb                   varchar(254),
    dt_ano_fundeb                         numeric(5, 0),
    tx_transferencia_fundeb               varchar(10),
    qt_valor_consolidado_fundeb           varchar(20),
    cd_ibge_fundeb                        varchar(10),
    cd_siafi__fundeb                      varchar(10),
    cd_municipio_censo                    varchar(30),
    qt_matricula_fund_censo               numeric(6, 0),
    tx_dependencia_censo                  varchar(15),
    dt_ano_censo                          numeric(5, 0),
    nm_unidade_federal_censo              varchar(100),
    sg_unidade_federal_censo              varchar(2),
    cd_unidade_federal_censo              varchar(2),
    nm_municipio_censo                    varchar(254),
    nm_escola_censo                       varchar(254),
    tp_dependencia_censo                  varchar(5),
    tp_localizacao_censo                  varchar(1),
    qt_matricula_ano_inicial_censo        numeric(6, 0),
    qt_matricula_ano_final_censo          varchar(6),
    CONSTRAINT PKavaliacao_municipio PRIMARY KEY (cd_identificador)
)
;



-- 
-- VIEW: v_avaliacao_2013 
--

CREATE VIEW v_avaliacao_2013   AS
SELECT av.nm_municipio_saeb, av.cd_municipio_saeb, av.cd_unidade_federal_saeb, av.nm_unidade_federal_saeb, av.tp_dependencia_administrativa_saeb, av.tx_localizacao_saeb, av.qt_media_5_lp_saeb, av.qt_media_5_mt_saeb, av.qt_media_9_lp_saeb, av.qt_media_9_mt_saeb, av.nm_municipio_fundeb, av.dt_ano_fundeb, av.tx_transferencia_fundeb, av.qt_valor_consolidado_fundeb, av.cd_ibge_fundeb, av.cd_siafi__fundeb, av.cd_municipio_censo, av.qt_matricula_fund_censo, av.tx_dependencia_censo, av.dt_ano_censo, av.nm_unidade_federal_censo, av.sg_unidade_federal_censo, av.cd_unidade_federal_censo, av.nm_municipio_censo, av.nm_escola_censo, av.tp_dependencia_censo, av.tp_localizacao_censo, av.qt_matricula_ano_inicial_censo, av.qt_matricula_ano_final_censo
FROM avaliacao_municipio av
WHERE av.dt_ano_censo=2013
;

-- 
-- VIEW: v_avaliacao_2015 
--

CREATE VIEW v_avaliacao_2015   AS
SELECT av.nm_municipio_saeb, av.cd_municipio_saeb, av.cd_unidade_federal_saeb, av.nm_unidade_federal_saeb, av.tp_dependencia_administrativa_saeb, av.tx_localizacao_saeb, av.qt_media_5_lp_saeb, av.qt_media_5_mt_saeb, av.qt_media_9_lp_saeb, av.qt_media_9_mt_saeb, av.nm_municipio_fundeb, av.dt_ano_fundeb, av.tx_transferencia_fundeb, av.qt_valor_consolidado_fundeb, av.cd_ibge_fundeb, av.cd_siafi__fundeb, av.cd_municipio_censo, av.qt_matricula_fund_censo, av.tx_dependencia_censo, av.dt_ano_censo, av.nm_unidade_federal_censo, av.sg_unidade_federal_censo, av.cd_unidade_federal_censo, av.nm_municipio_censo, av.nm_escola_censo, av.tp_dependencia_censo, av.tp_localizacao_censo, av.qt_matricula_ano_inicial_censo, av.qt_matricula_ano_final_censo
FROM avaliacao_municipio av
WHERE av.dt_ano_censo=2015
;

-- 
-- VIEW: v_avaliacao_2017 
--

CREATE VIEW v_avaliacao_2017   AS
SELECT av.nm_municipio_saeb, av.cd_municipio_saeb, av.cd_unidade_federal_saeb, av.nm_unidade_federal_saeb, av.tp_dependencia_administrativa_saeb, av.tx_localizacao_saeb, av.qt_media_5_lp_saeb, av.qt_media_5_mt_saeb, av.qt_media_9_lp_saeb, av.qt_media_9_mt_saeb, av.nm_municipio_fundeb, av.dt_ano_fundeb, av.tx_transferencia_fundeb, av.qt_valor_consolidado_fundeb, av.cd_ibge_fundeb, av.cd_siafi__fundeb, av.cd_municipio_censo, av.qt_matricula_fund_censo, av.tx_dependencia_censo, av.dt_ano_censo, av.nm_unidade_federal_censo, av.sg_unidade_federal_censo, av.cd_unidade_federal_censo, av.nm_municipio_censo, av.nm_escola_censo, av.tp_dependencia_censo, av.tp_localizacao_censo, av.qt_matricula_ano_inicial_censo, av.qt_matricula_ano_final_censo
FROM avaliacao_municipio av
WHERE av.dt_ano_censo=2017
;

-- 
-- VIEW: v_avaliacao_2019 
--

CREATE VIEW v_avaliacao_2019   AS
SELECT av.nm_municipio_saeb, av.cd_municipio_saeb, av.cd_unidade_federal_saeb, av.nm_unidade_federal_saeb, av.tp_dependencia_administrativa_saeb, av.tx_localizacao_saeb, av.qt_media_5_lp_saeb, av.qt_media_5_mt_saeb, av.qt_media_9_lp_saeb, av.qt_media_9_mt_saeb, av.nm_municipio_fundeb, av.dt_ano_fundeb, av.tx_transferencia_fundeb, av.qt_valor_consolidado_fundeb, av.cd_ibge_fundeb, av.cd_siafi__fundeb, av.cd_municipio_censo, av.qt_matricula_fund_censo, av.tx_dependencia_censo, av.dt_ano_censo, av.nm_unidade_federal_censo, av.sg_unidade_federal_censo, av.cd_unidade_federal_censo, av.nm_municipio_censo, av.nm_escola_censo, av.tp_dependencia_censo, av.tp_localizacao_censo, av.qt_matricula_ano_inicial_censo, av.qt_matricula_ano_final_censo
FROM avaliacao_municipio av
WHERE av.dt_ano_censo=2019
;

-- 
-- VIEW: v_avaliacao_2021 
--

CREATE VIEW v_avaliacao_2021   AS
SELECT av.nm_municipio_saeb, av.cd_municipio_saeb, av.cd_unidade_federal_saeb, av.nm_unidade_federal_saeb, av.tp_dependencia_administrativa_saeb, av.tx_localizacao_saeb, av.qt_media_5_lp_saeb, av.qt_media_5_mt_saeb, av.qt_media_9_lp_saeb, av.qt_media_9_mt_saeb, av.nm_municipio_fundeb, av.dt_ano_fundeb, av.tx_transferencia_fundeb, av.qt_valor_consolidado_fundeb, av.cd_ibge_fundeb, av.cd_siafi__fundeb, av.cd_municipio_censo, av.qt_matricula_fund_censo, av.tx_dependencia_censo, av.dt_ano_censo, av.nm_unidade_federal_censo, av.sg_unidade_federal_censo, av.cd_unidade_federal_censo, av.nm_municipio_censo, av.nm_escola_censo, av.tp_dependencia_censo, av.tp_localizacao_censo, av.qt_matricula_ano_inicial_censo, av.qt_matricula_ano_final_censo
FROM avaliacao_municipio av
WHERE av.dt_ano_censo=2021
;

-- 
-- VIEW: v_avaliacao_2023 
--

CREATE VIEW v_avaliacao_2023   AS
SELECT av.nm_municipio_saeb, av.cd_municipio_saeb, av.cd_unidade_federal_saeb, av.nm_unidade_federal_saeb, av.tp_dependencia_administrativa_saeb, av.tx_localizacao_saeb, av.qt_media_5_lp_saeb, av.qt_media_5_mt_saeb, av.qt_media_9_lp_saeb, av.qt_media_9_mt_saeb, av.nm_municipio_fundeb, av.dt_ano_fundeb, av.tx_transferencia_fundeb, av.qt_valor_consolidado_fundeb, av.cd_ibge_fundeb, av.cd_siafi__fundeb, av.cd_municipio_censo, av.qt_matricula_fund_censo, av.tx_dependencia_censo, av.dt_ano_censo, av.nm_unidade_federal_censo, av.sg_unidade_federal_censo, av.cd_unidade_federal_censo, av.nm_municipio_censo, av.nm_escola_censo, av.tp_dependencia_censo, av.tp_localizacao_censo, av.qt_matricula_ano_inicial_censo, av.qt_matricula_ano_final_censo
FROM avaliacao_municipio av
WHERE av.dt_ano_censo=2023
;

