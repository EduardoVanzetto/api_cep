class ComunicacaoViacep

    def buscar(cep)
        url = "https://viacep.com.br/ws/#{@cep}/json/"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        if retorno["erro"]
            {erro: "O CEP nao existe!"}
        else
            
        endereco = GravacaoViacep.new(retorno).gravar
        {end: endereco, municipio: endereco.cidade}
    
        end
    
    rescue JSOM::ParseError=> execption
        {erro: "O CEP e invalido"}
    rescue SocketError => execption
        {erro: "Falha de rede"}
    rescue => execption
        {erro: "Ligar no suporte"}
     end



end