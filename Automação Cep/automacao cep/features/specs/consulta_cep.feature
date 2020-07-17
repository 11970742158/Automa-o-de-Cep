#language: pt

@consulta_cep
Funcionalidade: Consultando_cep

Para que eu veja os dados de um cep fornecido
Como usuario vou digitar o cep
Para que tenha acesso ao resultado da consulta


    @cep_valido
    Cenário: CEP válido
    Quando consultar o CEP "01001000"
    Então tenho o status "200"
    E verei o código IBGE do endereço

    @cep_invalido    
    Cenário: CEP inválido
    Quando consultar um <CEP> inválido
    Então verei o status "400"
          Exemplos:
          | CEP         |
          | "00005-000" |
          | "0101a-g00" |
          | "01000-000" |