let dic = ["casas":10, "apartamentos":23, "fazendas":1, "sobrados":6]

var qtImoveis = 0
var maiorOcorrencia = ""
var maiorValor = 0

for(chave, valor) in dic{
    qtImoveis += valor
    
    if(valor>maiorValor){
        maiorValor = valor
        maiorOcorrencia = chave
    }
}

print("n de imoveis:\(qtImoveis)")
print("maior ocorrencia de \(maiorOcorrencia) (\(maiorValor))")