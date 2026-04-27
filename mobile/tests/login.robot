***Settings***
Documentation       Suite de testes de login

Resource            ../resources/Base.resource

Test Setup          Start session
Test Teardown       Finish session


***Test Cases***
Deve logar com o CPF e o IP


    ${data}     Get Json fixture        login

    Insert Membership                   ${data}

    SignIn with Documentation           ${data}[account][cpf] 

     User is logged in

Não deve logar com CPF não cadastrado

    SignIn with Documentation           48487877001 

    Popup have text                     Acesso não autorizado! Entre em contato com a central de atendimento

Não deve logar com CPF com dígito inválido
    [Tags]      TEMP

    SignIn with Documentation           00000014144 

    Popup have text                     CPF inválido, tente novamente