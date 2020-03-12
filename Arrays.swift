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

//uso de v.map() que recebe uma função como parâmetro e executa para cada elemento
let vetor = [2,4,8,10]

func duplicador(i: Int) -> Int{
	return i*2
}

let vetor_2 = vetor.map(duplicador)

print(vetor)
print(vetor_2)

//método filter que aplica um filtro nos elementos do array
let nums = [1,4,10,15]
let filtrado = nums.filter { $0 % 2 == 0 }
print(filtrado)

//métrodo reduce que pega os elementos do vetor e combina(soma) com um valor inicial
let itens = [2.0,4.0,5.0,7.0]
let total = itens.reduce(10.0, +)
print(total)

//Também utilizado para concatenar strings
let c = ["abc","def","ghi"]
let texto = c.reduce("", +)
print(texto)

//é possível utilizar mais de um método em uma manipulação de array
let nums2 = [4,5,8,2,9,7]
let res = nums2.filter{$0 >= 7}.reduce(0, +)
print(res)

let nums3 = [20,17,35,4,12]
let filtra_square = nums3.filter{$0 % 2 == 0}.map{$0 * $0}
print(filtra_square)


