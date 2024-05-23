*** Settings ***
Resource         ../resources/main.robot
Test Setup       Acesse o Serverest
Test Teardown    Feche o navegador

*** Test Cases ***
Verificar se quando um campo obrigatório não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    E clique no botão
    Então sistema deve apresentar mensagem de campo obrigatório
    
