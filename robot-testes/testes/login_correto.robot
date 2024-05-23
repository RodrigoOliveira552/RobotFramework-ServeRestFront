*** Settings ***
Resource         ../resources/main.robot
Test Setup       Acesse o Serverest
Test Teardown    Feche o navegador


*** Test Cases ***
Verificar se ao preencher os campos do formulário corretamente os dados são inseridos e automaticamente você é redirecionado para a página logado devidamente

    Preencha os campos do formulário
    E clique no botão
    Então identificar a página de usuário logado