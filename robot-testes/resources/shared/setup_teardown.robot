*** Settings ***
Resource    ../main.robot

*** Keywords ***

Acesse o Serverest
    Open Browser    url=https://front.serverest.dev/login  browser=Firefox


Feche o navegador
    Close Browser