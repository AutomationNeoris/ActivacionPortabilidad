***Settings***
Resource    loadcomponents.resource
Resource    ../../locators/common/common_locators.resource

***Keywords***
Abrir navegador
  Open Browser    ${url}    ${navegador}
  Maximize Browser Window
  SeleniumLibrary.Capture Page Screenshot    Claro_open_initial_page.png

Excepcion de seguridad
  SeleniumLibrary.Wait Until Element Is Visible    ${btn_mas_informacion}    60s
  Verify_Element_is_Present    //id[@id="invalidcert_closeTab"]
  #SeleniumLibrary.Capture Page Screenshot    Claro_MoreInfo.png
  SeleniumLibrary.Click Element    //id[@id="invalidcert_closeTab"]
  SeleniumLibrary.Wait Until Element Is Visible    //a[@id="overridelink"]    60s
  Verify_Element_is_Present    //a[@id="overridelink"]
  SeleniumLibrary.Capture Page Screenshot    Claro_Continue.png
  SeleniumLibrary.Click Element    //a[@id="overridelink"]
