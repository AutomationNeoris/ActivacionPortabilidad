***Settings***
Resource    loadcomponents.resource
Resource    ../../locators/common/login_locators.resource

***Keywords***
Ingresar a Poliedro
    Input Text    ${input_usuario}    ${usuario}
    Input Password     ${input_pass}    ${pass}
    Click Element    //input[@id='btnIngresarUsuarioContraseña']
