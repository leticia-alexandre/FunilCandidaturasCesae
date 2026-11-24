[README.md](https://github.com/user-attachments/files/35336316/README.md)
# Funil de Candidaturas @ CESAE Digital

Projeto de análise de dados desenvolvido pela **Team E** no âmbito do programa **PRO_MOV Data Analyst** (CESAE Digital). Analisa o percurso completo de um candidato, da pré-inscrição à conclusão do curso, para perceber **onde se perdem mais candidatos** e **que perfil tem maior probabilidade de concluir**.

> Os dados foram cedidos pelo CESAE Digital para fins formativos. **Este repositório não contém dados reais.**

---

## 📌 Contexto

| | |
|---|---|
| **Problema** | Desconhecimento de em que fase do percurso de candidatura se perdem mais candidatos. |
| **Necessidade** | Melhorar o processo de inscrição e triagem de candidatos. |
| **Objetivos** | Construir o funil de candidatura; investigar a desistência; identificar o perfil com maior probabilidade de conclusão; criar uma ferramenta escalável. |

## 🧭 Abordagem

- **Base de dados:** identificação, entre **190 tabelas**, das que são relevantes para o processo de candidatura e triagem.
- **Período de análise:** 2020 a 2023.
- **Taxa de conclusão:** calculada como *aprovados ÷ inscritos com desfecho registado*. Dividir pelo total de inscritos subestimaria a taxa, porque **22%** das inscrições ainda não têm desfecho registado (todas as taxas têm esta margem de incerteza).
- **Formação aberta vs. Formação-Ação:** analisadas em separado. A Formação-Ação tem cerca de 97% de conclusão e distorceria as comparações por curso, área e horário.

## 📊 O dashboard em 5 perguntas

O dashboard em Power BI tem 5 páginas, cada uma a responder a uma pergunta:

1. **Visão geral:** como está o funil e como evoluiu?
2. **Cursos e segmentação:** que cursos, polos, durações e horários atraem e concluem mais?
3. **Conclusão e desistência:** quanto, onde, quando e porquê se desiste?
4. **Perfil e origem:** quem se candidata e quem se inscreve?
5. **Perfil de alta conclusão:** que perfil tem mais probabilidade de concluir?

<!-- Substituir pelas capturas de ecrã reais (pasta /imagens) -->
<!-- ![Visão geral](imagens/01_visao_geral.png) -->

## 🔎 Principais resultados

- **Procura:** pico de pré-inscrições e inscrições em **2022**; a área mais procurada é **Ciências Informáticas** (2 588 inscrições).
- **Desistência:** o pico de desistências também foi em **2022** (549), acompanhando o pico de inscrições. Acontece, em média, ao fim de **62 dias** (~2 meses).
- **Conclusão por idade:** quem tem **55 ou mais anos** conclui mais (**88%**); os inscritos entre **16 e 24 anos** concluem menos (**74%**).
- **Conclusão por duração:** cursos curtos concluem mais do que cursos longos (**87% vs. 61%**).

## 💡 Recomendações

- **Registo:** tornar obrigatórios o desfecho, o motivo de saída e a data de entrada.
- **Acompanhamento:** reforçar o contacto nas primeiras 6 a 8 semanas, sobretudo com jovens e desempregados (não DLD).

## 🚀 Escalabilidade e evolução

- **Ingestão:** ligação direta à base de dados **SQL Server** do CESAE, sem preparação manual prévia.
- **Tratamento:** o **Power Query** aplica automaticamente as regras de limpeza e uniformiza os nomes de cursos e polos.
- **Atualização:** um clique em *Atualizar* recalcula todos os indicadores e atualiza todos os gráficos.

## 🛠️ Tecnologias

- SQL (SQL Server)
- Power BI e Power Query (ETL e análise)
- Google Drive (Armazenamento)
- Jira (Gestão de projetos)
- Kanban (Gestão de fluxo)
 

## 📁 Estrutura do repositório

<!-- Ajustar à estrutura real das pastas -->
```
├── README.md
├── dashboard/        # ficheiro .pbix (sem dados sensíveis)
├── apresentacao/     # Apresentacao_FunilCandidaturas.pptx
├── sql/              # queries utilizadas
└── imagens/          # capturas de ecrã do dashboard
```

## ▶️ Como usar

1. Abrir o ficheiro `.pbix` no **Power BI Desktop**.
2. Configurar a origem de dados (servidor e base de dados SQL Server) em *Transformar dados → Definições da origem de dados*.
3. Clicar em **Atualizar** para carregar os dados e recalcular os indicadores.


## 👥 Equipa — Team E

| Função | Nome |
|---|---|
| Team Leader | Aline Gomes |
| Data Analyst | Andreza Silva |
| Data Analyst | Letícia Alexandre |
| Data Analyst | Shaini Dittberner |

## 🙏 Agradecimentos

- Ao **CESAE Digital**, na pessoa de **Bruno Santos**, que cedeu os dados que viabilizaram o projeto.
- À parceria **PRO_MOV** e ao **CESAE Digital**, que viabilizam a nossa formação e requalificação profissional.
