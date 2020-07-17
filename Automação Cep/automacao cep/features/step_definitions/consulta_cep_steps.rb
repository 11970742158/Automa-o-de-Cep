cep_api = CepAPI.new

Quando("consulto o CEP {string}") do |cep|
  @result = cep_api.consultando_cep(cep)
end

Então("vejo o status {string}") do |status_code|
  expect(@result.response.code).to eql status_code
end

Então("vejo o código IBGE") do
  @codigo_ibge = @result.parsed_response["ibge"]
  puts "Código IBGE do endereço: #{@codigo_ibge}"
end

Quando("consulto um {string} inválido") do |cep|
  @result = cep_api.consulta_cep(cep)
end
