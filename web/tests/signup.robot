*** Settings *** 

Documentation      Cenários de pré-cadastro de clientes

Resource       ../resources/Base.resource

Test Setup      Start Session

Test Teardown   Take Screenshot


*** Test Cases ***
Deve iniciar o cadastro do cliente
    [Tags]      smoke

    ${account}      Create Dictionary
    ...             name=Maues Gabriel
    ...             email=maues@msn.com
    ...             cpf=60290546001 

    Delete Account By Email     ${account}[email]

    Submit signup form  ${account}

    Verify welcome message

Campo nome deve ser obrigatório
    [Tags]  required
    ${account}      Create Dictionary
    ...     name=${EMPTY}
    ...     email=maues@gmail.comp 
    ...     cpf=39891866029
    
    Submit signup form  ${account}

    Notice should be        Por favor informe o seu nome completo

Campo e-mail deve ser obrigatório
    [Tags]  required
    ${account}      Create Dictionary
    ...     name=Gabriel Maues
    ...     email=${EMPTY}
    ...     cpf=39891866029
    
    Submit signup form  ${account}

    Notice should be        Por favor, informe o seu melhor e-mail

Campo cpf deve ser obrigatório
    [Tags]  required
    ${account}      Create Dictionary
    ...     name=Gabriel Maues
    ...     email=maues@gmail.comp 
    ...     cpf=${EMPTY}
    
    Submit signup form  ${account}

    Notice should be        Por favor, informe o seu CPF

E-mail no formato inválido
    [Tags]  invalid
   ${account}      Create Dictionary
    ...     name=Gabriel Maues
    ...     email=maues$$gmail.comp 
    ...     cpf=39891866029

    Submit signup form  ${account}

    Notice should be        Oops! O email informado é inválido

CPF no formato inválido
    [Tags]  invalid
    ${account}      Create Dictionary
    ...     name=Gabriel Maues
    ...     email=maues@gmail.comp 
    ...     cpf=398aa866029
 
    Submit signup form  ${account}

    Notice should be        Oops! O CPF informado é inválido

Tentativa de pré-cadastro
    [Tags]          Template
    [Template]      Attempt signup
    ${EMPTY}          maues@gmail.com     39831866029     Por favor informe o seu nome completo
    Gabriel Maues     ${EMPTY}            39831866029     Por favor, informe o seu melhor e-mail
    Gabriel Maues     maues@gmail.com     ${EMPTY}        Por favor, informe o seu CPF
    Gabriel Maues     maues$gmail.com     39831866029     Oops! O email informado é inválido
    Gabriel Maues     maues@gmail.com     3983aa66029     Oops! O CPF informado é inválido















   

    

