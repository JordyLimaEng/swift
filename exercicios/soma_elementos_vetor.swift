func soma(valores:[Int]) -> Int{
    var soma = 0
    for valor in valores{
        soma += valor
    }
    return soma
}

var v = [1,2,3,4,5] //soma é 12
print(soma(valores:v))