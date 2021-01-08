module EmpregadoController
   include HTTParty

   base_uri CONFIG['url_empregado'].to_s
   basic_auth CONFIG['auth']['username'], CONFIG['auth']['pw']
   headers 'Content-Type' => 'application/json'
   format :json
   
end