class BuscaCepController < ApplicationController
require 'net/http'
require 'json'

def buscar

    render json: ComunicacaoViacep.new.buscar(cep_params[:cep]), status : :ok

end

  #endereco = Endereco.new
private 

def cep_params
    params.permit(:cep)
end

end

