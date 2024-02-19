*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${input_firstName}              id:firstName
${input_lastName}               id:lastName
${input_userEmail}              id:userEmail
${input_userNumber}             id:userNumber

*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://demoqa.com/automation-practice-form      chrome

preencher campos
    Input Text  ${input_firstName}      Arya
    Input Text  ${input_lastName}       Stark
    Input Text  ${input_userEmail}      arya.stark@winterfell.com
    Input Text  ${input_userNumber}     555-1234

clicar em buttons
    Select Checkbox     id:gender-radio-1   
    Select Checkbox     id:hobbies-checkbox-3

fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Preencher formulário
    abrir navegador e acessar o site
    preencher campos
    clicar em buttons
    fechar navegador