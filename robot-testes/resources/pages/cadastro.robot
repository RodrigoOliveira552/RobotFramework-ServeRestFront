*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
${CAMPO_EMAIL}       name:email
${CAMPO_SENHA}       name:password
${CAMPO_BOTAO}       class:btn
${CAMPO_LINK}        class:btn-link


${CADASTRO_NOME}             name:nome
${CHECKBOX_ADMINISTRADOR}    name:administrador        

*** Keywords ***
Preencha os campos do formulário
    ${EMAIL}    Set Variable    beltranoqa@com.br
    ${SENHA}    Set Variable    1234

    Input Text                   ${CAMPO_EMAIL}      ${EMAIL}
    Input Text                   ${CAMPO_SENHA}     ${SENHA}

E clique no botão
    Click Element                ${CAMPO_BOTAO}
    Sleep    5s

Então identificar a página de usuário logado
    Element Should Be Visible    class:card-body


Então sistema deve apresentar mensagem de campo obrigatório
    Element Should Be Visible    class:alert
    Sleep    5s

Acesse o menu cadastro
    Click Element    ${CAMPO_LINK}
    Sleep    5s

E preencha os campos do formulário de cadastro
    ${NOME}     Generate Random String    length=8    chars=[LETTERS]
    ${EMAIL}    Generate Random String    length=12   chars=[LETTERS]    
    ${SENHA}    Set Variable    1234

    Input Text        ${CADASTRO_NOME}    ${NOME}
    Input Text        ${CAMPO_EMAIL}      ${EMAIL}@com.br
    Input Text        ${CAMPO_SENHA}      ${SENHA}
    Click Element     ${CHECKBOX_ADMINISTRADOR}


Identificar página redirecionada após cadastro
    Element Should Be Visible    class:jumbotron

E saia da página de usuário
    Click Element    class:btn-info


Então sistema deve apresentar mensagem de erro de cadastro de campo obrigatório
    Element Should Be Visible    class:alert
    Sleep    5s