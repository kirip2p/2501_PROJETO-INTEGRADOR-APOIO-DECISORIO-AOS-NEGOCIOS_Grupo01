# Avaliação do Ensino Básico nos Municípios Brasileiros

Investir em educação é um dos pilares para o desenvolvimento econômico e social de um país. Diante dos desafios do setor educacional no Brasil, é fundamental analisar como os recursos públicos são aplicados e como impactam o desempenho escolar dos estudantes. Este projeto propõe um **sistema de informação integrado**, capaz de consolidar dados sobre infraestrutura das escolas, recursos financeiros aplicados e desempenho educacional em avaliações nacionais dos alunos das escolas de responsabilidade dos municípios brasileiros. Essencialmente, estamos nos referindo à avaliação do ensino básico/fundamental (1º ano ao 9º ano) das redes municipais de ensino.

---

## Objetivos

- Coletar e organizar dados de fontes oficiais, como **FUNDEB**, **SAEB** e **Censo Escolar**.
- Integrar esses dados de forma a possibilitar o desenvolvimento de ferramentas que correlacionem **investimentos públicos**, **infraestrutura escolar** e **resultados em avaliações educacionais (provas)**.
- Realizar operações OLAP que permitam extrair informações dos conjuntos de dados por meio de tabelas. 

Este projeto possibilitará a criação de métricas de eficiência, como **custo por aluno em relação ao IDEB**, e a geração de **dashboards interativos** para facilitar a análise e visualização dos dados.

---

## Metodologia

1. Integração de dados de diferentes fontes em uma única plataforma.
2. Realização de operações OLAP.
3. Geração de tabelas e gráficos.
4. Análises comparativas entre municípios e entre estados.
5. Visualizações claras e intuitivas que destacam municípios/estados de maior e menor eficiência em relação aos gastos em educação.
6. Produção de relatórios que apoiam a **tomada de decisão baseada em evidências**.

---

## Benefícios

- Maior **transparência** na aplicação dos recursos públicos.
- Apoio à criação de **políticas educacionais mais eficientes**.
- Possibilidade de **monitoramento contínuo** do desempenho escolar.
- Referência para gestores, pesquisadores e profissionais da educação.

---

## Tecnologias e Técnicas

O objetivo geral do projeto é possibilitar uma análise do cenário do ensino básico/fundamental (1º ano ao 9º ano) das milhares de redes municipais de ensino público do Brasil a partir das principais fontes de dados abertos do governo federal. Foram então selecionados e obtidos dados das seguintes fontes:

- SAEB (Sistema de Avaliação da Educação Básica): https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/saeb/resultados
- Censo Escolar (Sistema Educacenso): https://www.gov.br/inep/pt-br/areas-de-atuacao/pesquisas-estatisticas-e-indicadores/censo-escolar/resultados
- FUNDEB (Fundo de Manutenção e Desenvolvimento da Educação Básica): https://sisweb.tesouro.gov.br/apex/f?p=2600:1


**Descrição da Execução da Solução**

Os dados brutos foram obtidos em formato de planilha Excel. Em seguida, foi realizada uma análise do conteúdo dos arquivos baixados para filtrar e selecionar quais campos seriam pertinentes para o objetivo do projeto.

A modelagem dos dados foi realizada com o software de modelagem **ER Studio Data Architect versão 20.3.1**. Todo o processo de modelagem foi dividido em duas etapas: Modelo Lógico e Modelo Físico.
- Modelo Lógico: modelagem conceitual da tabela e seus atributos (Figura 1).
- Modelo Físico: modelagem com as tabelas e atributos a serem implantados de fato no banco de dados **Postgre**, juntamente com as views (Figura 2).


<img width="550" height="724" alt="image" src="https://github.com/user-attachments/assets/848ec479-3b75-4c86-9f47-ba5c4bf74bb7" />

**Figura 1. Modelo Lógico.**


<img width="550" height="724" alt="image" src="https://github.com/user-attachments/assets/efb199b2-a254-4af8-bcc0-24e655fc6b93" />

**Figura 2. Modelo Físico.**


O processo de modelagem seguiu as boas práticas de nomenclatura das entidades, evitando caracteres especiais, espaçamento, letras minúsculas e preposições. 

O referido software de modelagem possui recurso para gerar **script DDL** para posterior criação das tabelas e views em banco.

A execução do **script DDL** foi realizada com o uso do software **PGAdmin versão 4**, uma ferramenta para desenvolvimento e administração de banco de dados em **PostgreSQL**.

O banco selecionado é o **Postgre versão 12** para o armazenamento dos dados. Sendo o **Postgre** um banco de dados relacional, foram realizadas operações ROLAP (Relational OLAP), que representa OLAP para bancos de dados relacionais.

A execução do DDL criou as seguintes tabelas e views:
- avaliação_muncipio;
- v_avaliacao_2013;
- v_avaliacao_2015;
- v_avaliacao_2017;
- v_avaliacao_2019;
- v_avaliacao_2021;
- v_avaliacao_2023.

A inserção dos dados no banco foi realizado por meio de um software ETL. Os dados da planilha obtidos nas fontes de dados foram convertidos e inseridos diretamente no banco de dados. Por esta razão, não foi necessário desenvolver o script de inserção de dados em linguagem SQL.

O software ETL utilizado para esta operação é o **FME, versão 2025**.

A utilização do ETL foi fundamental para o tratamento e conversão dos dados brutos antes do armazenamento em banco. 

<img width="597" height="288" alt="image" src="https://github.com/user-attachments/assets/1b688e15-9149-4347-b454-b2f0431afa5c" />

**Figura 3. Macro-fluxo dos Dados.**

Nesta etapa, foram utilizados os seguintes recursos do ETL (Figura 3):
- Filtragem: seleção e remoção de atributos desnecessários.
- Replacement: substituição, remoção e limpeza de caracteres para padronizar o conteúdo do atributo em formato numérico, necessário para cálculos matemáticas. Por exemplo, remoção do prefixo “R$” em campos de valor monetário.
- Tester: filtro de condições em campos. No caso do projeto, foram utilizados somente dados do tipo “municipal”.
- Merger: integra os dados das fontes distintas em uma tabela única por meio de um campo em comum.
- Renamer: renomeia os nomes das colunas das planilhas para os atributos modelados no banco.

Após a inserção dos dados no banco, foi possível realizar as operações ROLAP. Foram realizadas as seguintes pesquisas (query):
- **Gasto total do FUNDEB** e **Quantidade total de matrículas no ensino fundamental** por estado pra cada ano (2013 até 2023) – agregação ROLL-UP do nível municipal para estadual (foi exemplificado o ano 2013);
- **Pesquisa das médias de Língua Portuguesa e Matemática na prova do Saeb do 5º ano e do 9º ano do ensino fundamental** pra cada ano (2013 até 2023) de todos os municípios - operação em fatiamento "dice" (foi exemplificado o ano 2013);
- **Pesquisa das médias de Língua Portuguesa e Matemática na prova do Saeb do 5º ano e do 9º ano do ensino fundamental** pra cada município ao longo dos anos (2013 até 2023) - operação em fatiamento "slice" (foi exemplificado o município de Recife);
- **Quantidade total de matrículas no ensino fundamental** pra cada ano (2013 até 2023) de todos os municípios - operação em fatiamento "dice" (foi exemplificado o ano 2013);
- **Gasto total do FUNDEB** pra cada ano (2013 até 2023) de todos os municípios - operação em fatiamento "dice" (foi exemplificado o município de Recife).

---

## Comentários Finais

Ao integrar informações dispersas sobre educação, este projeto fortalece a transparência na gestão pública e contribui para o desenvolvimento de políticas educacionais fundamentadas em dados confiáveis.

