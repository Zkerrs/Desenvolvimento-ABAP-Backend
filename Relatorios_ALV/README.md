# 📊 Relatórios ALV (ABAP List Viewer)

> <sub>**Extração, Processamento e Visualização de Dados**</sub>
> <sub>Este diretório é dedicado a scripts e programas com o objetivo final é buscar dados nas tabelas do ERP, processá-los em memória e exibi-los ao usuário através de grades interativas (ALV). É o padrão para relatórios analíticos no ABAP Backend.</sub>

---

## 🎯 Foco Técnico

> <sub>*Os códigos armazenados nesta pasta exploram os seguintes conceitos:*</sub>

### 🔍 Consultas e Extração (Open SQL)
* Extração de dados corporativos no banco do S/4HANA (`SELECT`, `JOIN`, `FOR ALL ENTRIES`).
* Criação de Telas de Seleção para filtros interativos (`SELECT-OPTIONS` e `PARAMETERS`).

### 📈 Visualização de Dados
* **ALV Orientado a Objetos (OO):** Geração de relatórios modernos utilizando a classe `cl_salv_table`.
* **Tratamento de Exceções:** Uso de blocos `TRY...CATCH` para evitar falhas de execução ao gerar a interface.

### 🧠 Estruturas de Dados
* Declaração e manipulação de Tipos, Tabelas Internas e *Work Areas* (`TYPES`, `TYPE TABLE OF`).

---
<div align="center">
  <sub>Parte do repositório <b>Desenvolvimento-ABAP-Backend</b></sub>
</div>
