//Arrays em swift são fortamente tipados, logo necessita-se que todos os elementos do array sejam do mesmo tipo

let pares: Array<Int> = [2, 4, 6, 8, 10]
let impares: [Int] = [1, 3, 5, 7, 9]

var numeros = [1, 2, 3, 4]
print(numeros)

numeros.append(5)
print(numeros)

numeros.append(6)
print(numeros)

print("primeiro elemento: \(numeros[0])")

var pares2 = Array<Int>() // instancia de um array vazio
                          //pares 2 = [Int]() => análogo a primeira
print(pares2)

pares2 += [2,4,6,8,10]
print(pares2)

pares2 += [12,14,16,18,20]
print(pares2)

var imparesMutaveis = [1, 3, 5, 7]
imparesMutaveis.append(9)

for impar in imparesMutaveis {
    print(impar)
}

// Será impresso:
// 1
// 3
// 5
// 7
// 9

// Caso prefira também pode-se utilizar um for com 
// a quantidade de elementos do Array, obtida com 
// o método count
for i in 0 ..< imparesMutaveis.count {
    print(imparesMutaveis[i])
}
