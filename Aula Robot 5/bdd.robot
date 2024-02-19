*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Dados do teste
${NomeDaMusica}                     GODS Newjeans

#Variáveis de configuração
${URL}                              https://www.youtube.com/
${Browser}                          chrome

#Elementos
${Input_Pesquisa}                   //input[@id='search']
${Button_Pesquisa}                  //button[@id="search-icon-legacy"]
${Primeiro}                         (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}                            //yt-button-shape[@id="subscribe-button-shape"]

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}      ${Browser}

Quando digito o nome da música
    Input Text      ${Input_Pesquisa}   ${NomeDaMusica}

E clico no botão buscar
    Click Element   ${Button_Pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible   ${Primeiro}     10s
    Click Element   ${Primeiro}

Então o vídeo é executado
    Wait Until Element Is Visible   ${Prova}    10s
    Element Should Be Visible   ${Prova}
    Sleep   3s
    Close Browser

*** Test Cases ***
Cenário 1: Executar vídeos no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado