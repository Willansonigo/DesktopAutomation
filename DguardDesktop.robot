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
#${APP}          Microsoft.WindowsCalculator_8wekyb3d8bbwe!App
${APP}          {1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\notepad.exe

*** Keywords ***
Start Calculadora 
   [Documentation]    Sets up the application for quick launching through 'Launch Application' and starts the winappdriver
   Driver Setup
   Open Application  ${REMOTE_URL}  platFormName=Windows  deviceName=Windows  app=${APP}
   Maximize Window
   Quit Application



*** Test Cases ***
Esperar E Clicar No Botão Dois
   #Wait For And Click Element    accessibility_id=num2Button
   #Wait Until
  
  
 