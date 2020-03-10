let str1 = "string simples"

let str2 = "concatenando1" + " +2"

var nome = "joão"
nome+=" da Silva"

let idade = 23

let pessoa = "\(nome) possui \(idade) anos"

let animal1 = "cao"
let animal2 = "gato"
let animal3 = "lince"

if animal1 == animal2{
	print("...")
	.
	.
	.
}

let stringImutável = "Uma string imutável" /* perceba que podemos acentuar 
nomes de varíaveis ou constantes em Swift! :)*/

// o símbolo + nesse caso será utilizado para concatenação de string 
// (explicaremos melhor no próximo parágrafo)

let novaString = stringImutável + ", ou seja, constante." 

// valor de novaString = "Uma string imutável, ou seja, constante."
// concatenação e atribuição válidas, mesmo a string inicial sendo constante.

// Observe esse outro exemplo
let outraStringImutavel = "Outra string imutável"
outraStringImutavel += " concatenada com outra string?!" // Erro!!!!

/* O erro ocorre porque não podemos alterar a string imutável propriamente 
dita,apenas poderíamos criar uma nova a partir dela.  Por fim, vamos fazer o 
mesmo com uma string mutável agora */

var stringMutavel = "Uma string mutável"
stringMutavel += " concatenada com outra string!!"

/* O valor de stringMutavel é "Uma string mutável concatenada com outra 
string!!". Pois, podemos concatenar uma nova string ao valor inicial dela, já 
que ela é mutável.*/




var cargo = "administrador"

if cargo == "administrador" {
    print("Acesso permitido!")
}

// Será impresso "Acesso permitido!"
// Perceba que utilizamos o operador == para comparar Strings nesse exemplo

var nome1 = "josé"
var nome2 = "maria"

if nome1 < nome2 {
    print("Ordenação dos nomes: \(nome1) -> \(nome2)")
}

// Será impresso "Ordenação dos nomes: josé -> maria"
// Perceba que utilizamos o operador < para descobrir se alfabeticamente
// nome1 vem antes de nome2.

for c in "Entrada".characters {
    print(c)
}

// Será impresso:
// E
// n
// t
// r
// a
// d
// a