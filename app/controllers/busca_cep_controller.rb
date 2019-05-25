class BuscaCepController < ApplicationController
require 'net/http'
require 'json'

def buscar

    @cep = cep_params{:cep}
    url = "https://viacep.com.br/ws/#{@cep}/json/"

    retorno = JSON.parse(Net::HTTP.get(URI(url)))

    #endereco = Endereco.new

    render json: {cidade: retonro["localidade"]}, status: :ok
    private 

    def cep_params
        params.permit(:cep)
    end

end

end
