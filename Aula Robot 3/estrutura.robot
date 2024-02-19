*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${variavel1}    teste
${variavel2}    bbbb
${variavel3}    16666


*** Keywords ***
abrir site da google
    Open Browser    https://www.google.com/    chrome

fechar navegador
    Close Browser

abrir site da globo
    Open Browser    https://www.globo.com/    chrome


** Test Cases **
Cenário 1: Teste de abrir site google
    abrir site da google
    fechar navegador

Cenário 2: Teste de abrir site globo
    abrir site da globo
    fechar navegador