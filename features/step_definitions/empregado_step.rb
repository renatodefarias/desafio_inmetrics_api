Dado('que seja enviado um PUT com as informações de um empregado cadastrado') do
  step 'que seja enviado um GET com as informações de todos cadastros'

  @admissao = '14/09/2018'
  @cargo = DATA['empregado']['cargo'].sample
  @comissao = DATA['empregado']['comissao'].sample
  @cpf = Faker::CPF.pretty
  @nome = "#{Faker::Name.first_name} #{Faker::Name.middle_name} #{Faker::Name.last_name}"
  @salario = DATA['empregado']['salario'].sample
  @sexo = DATA['empregado']['sexo'].sample
  @tipo_contratacao = DATA['empregado']['tipo_contratacao'].sample

  @body = {
    admissao: @admissao,
    cargo: @cargo,
    comissao: @comissao,
    cpf: @cpf,
    departamentoId: 1 ,
    nome: @nome,
    salario: @salario,
    sexo: @sexo,
    tipoContratacao: @tipo_contratacao
  }.to_json

  @API_Inmetrics_Empregado_Controller_put = EmpregadoController.put "/alterar/#{@empregado_id}", body: @body
end
 
Então('validar que o PUT será feito com sucesso') do
  response = @API_Inmetrics_Empregado_Controller_put.parsed_response

  expect(response['admissao']).eql? @admissao
  expect(response['cargo']).eql? @cargo
  expect(response['comissao']).eql? @comissao
  expect(response['cpf']).eql? @cpf
  expect(response['nome']).eql? @nome
  expect(response['admissao']).eql? @salario
  expect(response['sexo']).eql? @sexo
  expect(response['tipoContratacao']).eql? @tipo_contratacao
  expect(@API_Inmetrics_Empregado_Controller_put.code).eql? 202
end
 
Dado('que seja enviado um POST com as informações de cadastro') do
  @body = {
     admissao: '14/09/2018',
     cargo: DATA['empregado']['cargo'].sample,
     comissao: DATA['empregado']['comissao'].sample,
     cpf: Faker::CPF.pretty,
     departamentoId: 1 ,
     nome: "#{Faker::Name.first_name} #{Faker::Name.middle_name} #{Faker::Name.last_name}",
     salario: DATA['empregado']['salario'].sample,
     sexo: DATA['empregado']['sexo'].sample,
     tipoContratacao: DATA['empregado']['tipo_contratacao'].sample
   }.to_json

   @API_Inmetrics_Empregado_Controller_post = EmpregadoController.post '/cadastrar', body: @body
end
 
Então('validar que o POST será feito com sucesso') do
  expect(@API_Inmetrics_Empregado_Controller_post.code).eql? 202
end
 
Dado('que seja enviado um DELETE de um empregado cadastrado') do
  step 'que seja enviado um GET com as informações de todos cadastros'
  @API_Inmetrics_Empregado_Controller_delete = EmpregadoController.delete "/deletar/#{@empregado_id}"

end
 
Então('validar que o DELETE será feito com sucesso') do
  expect(@API_Inmetrics_Empregado_Controller_delete.code).eql? 200
  @API_Inmetrics_Empregado_Controller_get = EmpregadoController.get "/list/#{@empregado_id}"
  expect(@API_Inmetrics_Empregado_Controller_get.code).eql? 404
end

Dado('que seja enviado um GET com as informações de cadastro') do
  step 'que seja enviado um GET com as informações de todos cadastros'
  @API_Inmetrics_Empregado_Controller_get = EmpregadoController.get "/list/#{@empregado_id}"

end

Então('validar que o GET será feito com sucesso') do
  expect(@API_Inmetrics_Empregado_Controller_get.code).eql? 200
end

Dado('que seja enviado um GET com as informações de todos cadastros') do     
  @API_Inmetrics_Empregado_Controller_getall = EmpregadoController.get '/list_all'
  @empregado_id = @API_Inmetrics_Empregado_Controller_getall.parsed_response.sample['empregadoId']
end                                                                          
                                                                             
Então('validar que o GET de todos cadastros será feito com sucesso') do
  expect(@API_Inmetrics_Empregado_Controller_getall.code).eql? 200
end                                                                          