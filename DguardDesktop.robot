*** Settings ***
Documentation       Zoomba Desktop Library Tests.
Library             Zoomba.DesktopLibrary
#Gatilhos de Setup da Suite
Suite Setup     Start Calculadora 
#Gatilhos de Setup por Test
Test Setup      Launch Application
#Gatilho que executa após execução do Teste
Test Teardown   Quit Application
#Gatilho que executa após executação da Suite
Suite Teardown  Driver Teardown
Force Tags      Windows



*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723
${APP}          Calculadora Microsoft.WindowsCalculator_8wekyb3d8bbwe!App

*** Keywords ***
Start Calculadora 
   [Documentation]    Sets up the application for quick launching through 'Launch Application' and starts the winappdriver
   Driver Setup
   Open Application  ${REMOTE_URL}  platFormName=Windows  deviceName=Windows  app=${APP}
   Maximize Window
   Quit Application



*** Test Cases ***
Esperar E Clicar No Botão Configurações
  wait For And Click Element    accessibility_id=num2Button
  wait Until Element Contains   accessibility_id=CalculatorResults  2
  
 