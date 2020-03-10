//for
var numero = 0

for numero in 0...5{
    print("\(numero) - testando for ")
}
print("\n")

//while = primeiro testa a condição
while numero < 5 {
    print("Imprime \(numero)")
    numero += 1
}
print("\n")

//repeat-while = primeiro executa o bloco e depois testa a condição de saída
numero = 0

repeat{
    print("Imprime \(numero)")
    numero += 1
}while numero < 5 
print("\n")

//exemplificando 
numero = 0

while numero < 0 {
    print("Imprime \(numero)")
    numero += 1
}
print("\n")

//repeat-while = primeiro executa o bloco e depois testa a condição de saída
numero = 0

repeat{
    print("Imprime \(numero)")
    numero += 1
}while numero < 5 
print("\n")
