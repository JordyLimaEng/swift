//if, else, switch e ternario

// if
let hora = 18

if hora>=18 || hora<6{
    print("boa noite")
}else if hora>=12 {
    print("boa tarde")
}else{
    print("bom dia")
}

//switch
switch hora{
    case 6:
    print("bom dia")
    case 18:
    print("boa noite ou boa tarde")
    default:
    print("sei lá")
}

//switch com intervalo
switch hora{
    case 6..<12:
    print("bom dia")
    case 12..<18:
    print("boa tarde")
    case 18:
    print("sei lá")
    default:
    print("boa noite")
}

let temperatura = 50

switch temperatura {
case 30...50:
    // 30...50 define um intervalo (tipo Range) que vai de 30 até 50 (inclusive)
    print("Muito quente!")
case 29:
    // temperatura exatamente igual a 29 graus
    print("Vinte e nove graus.")
case 20..<29:
    // 20..<29 define um Range que vai de 20 até 28 (29 é excluído nesse caso)
    print("Temperatura confortável.")
default:
    print("Outra temperatura.")
}

//ternario
let idade = 17
let maioridade = idade>=18 ? "Maior de idade" : "menor de idade"

print(maioridade)

//ternario com 2 ?
let nota:Int? = 10
let nota_real = nota ?? 0 // recebe o valor atribuido na declaração caso seja possivel o desempacotamento, se não recebe o valor indicado no térnario

print(nota_real)








