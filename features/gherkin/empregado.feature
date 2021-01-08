#language:pt 

@empregado_controller
Funcionalidade: Empregado-Controller

 @API_Inmetrics_Empregado_Controller.put
 Cenario: Validar o endpoint API_Inmetrics_Empregado_Controller.put
    Dado que seja enviado um PUT com as informações de um empregado cadastrado
    Então validar que o PUT será feito com sucesso

 @API_Inmetrics_Empregado_Controller.post
 Cenario: Validar o endpoint API_Inmetrics_Empregado_Controller.post
    Dado que seja enviado um POST com as informações de cadastro
    Então validar que o POST será feito com sucesso
 
 @API_Inmetrics_Empregado_Controller.delete
 Cenario: Validar o endpoint API_Inmetrics_Empregado_Controller.delete
    Dado que seja enviado um DELETE de um empregado cadastrado
    Então validar que o DELETE será feito com sucesso

 @API_Inmetrics_Empregado_Controller.get
 Cenario: Validar o endpoint API_Inmetrics_Empregado_Controller.get
    Dado que seja enviado um GET com as informações de cadastro
    Então validar que o GET será feito com sucesso

 @API_Inmetrics_Empregado_Controller.getall
 Cenario: Validar o endpoint API_Inmetrics_Empregado_Controller.getall
    Dado que seja enviado um GET com as informações de todos cadastros
    Então validar que o GET de todos cadastros será feito com sucesso