# Exercício de Criação de Tabelas e Consulta SQL

Este é um exemplo de um exercício de criação de tabelas e consulta SQL envolvendo duas tabelas: "TABELA_ALUNOS" e "TABELA_CIDADES". O objetivo deste exercício é criar e popular essas tabelas e, em seguida, realizar uma consulta SQL para obter informações sobre os alunos e suas respectivas cidades.

## Inserção de Dados

Foram inseridos dados nas tabelas para representar cidades e alunos fictícios. Os dados incluem nomes de cidades, população, nomes de alunos e datas de nascimento.

## Consulta SQL

A consulta SQL a seguir foi usada para obter informações sobre os alunos e suas respectivas cidades:

```sql
SELECT *
FROM TABELA_ALUNOS
INNER JOIN TABELA_CIDADES ON TABELA_CIDADES.id = TABELA_ALUNOS.cidade_id;
