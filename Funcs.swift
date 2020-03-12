func soma1(numero:Int)->Int{ //função que recebe inteiro e retorna int
	return numero + 1
}

func sub1(numero:Int)->Int{//função que recebe inteiro e retorna int
	return numero + 1
}

var somar = soma1 //em swift é possivel usar uma variavel como se fosse uma função

var res = somar(5)

print(res)

//usando função como parâmetro
func conta(operacao: (Int)->Int, numero: Int)->Int{
	return operacao(numero)
}

res = conta(operacao: soma1, numero: 6)

print(res)

res = conta(operacao: sub1, numero: 7)

print(res)

//função que recebe 2 valores int e retorna uma tupla com 4 resultados diferentes
func calculos(num1: Int, num2: Int)->(Int, Int, Int, Int){
	return (num1+num2, num1-num2, num1*num2, num1/num2)
}

//variavel res_calc recebe a tupla 
var res_calc = calculos(num1:5, num2:3)
print(res_calc)

//divisão da tupla em variaveis
let (soma, sub, mult, div) = calculos(num1:5, num2:3)
print(soma,sub,mult,div)


//uso de v.map() que recebe uma função como parâmetro e executa para cada elemento
let vetor = [2,4,8,10]

func duplicador(i: Int) -> Int{
	return i*2
}

let vetor_2 = vetor.map(duplicador)

print(vetor)
print(vetor_2)