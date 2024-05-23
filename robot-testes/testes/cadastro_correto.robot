*** Settings ***
Resource         ../resources/main.robot
Test Setup       Acesse o Serverest
Test Teardown    Feche o navegador


*** Test Cases ***


Verificar se ao cadastrar o usuário constará no sistema
    Acesse o menu cadastro
    E preencha os campos do formulário de cadastro
    E clique no botão
    Identificar página redirecionada após cadastro

Verificar se ao cadastrar 50 usuários constarão no sistema
    FOR    ${i}    IN RANGE    1    50
        Acesse o menu cadastro
        E preencha os campos do formulário de cadastro
        E clique no botão
        Identificar página redirecionada após cadastro
        E saia da página de usuário

    END
