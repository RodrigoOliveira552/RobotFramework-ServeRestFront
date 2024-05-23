
*** Settings ***
Resource         ../resources/main.robot
Test Setup       Acesse o Serverest
Test Teardown    Feche o navegador


*** Test Cases ***
Verificar se ao cadastrar o usuário constará no sistema
    E clique no botão
    Então sistema deve apresentar mensagem de erro de cadastro de campo obrigatório
