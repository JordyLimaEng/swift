
func soma(v1: Double, v2: Double){
    print(v1+v2)
}
soma (v1:10,v2:20.52)

var texto = "um texto qualquer"
print(texto)

var numero = (1-2+3)/2*3 //recebe 3
print(numero)

numero*=2
print(numero)

numero/=2
print(numero)

numero+=2
print(numero)

numero-=2
print(numero)

numero = 10 % 2
print(numero)

var logico = true && true
print(logico)

logico = true || false
print(logico)

logico = !true || false
print(logico)

if 1 < 2 {
    print("1 é menor do que 2...")
    
    if 2 > 1 {
        print("...2 é maior do que 1...")
        
        if 1 == 1 && 2 == 2 {
            print("...1 é igual a 1 e 2 é igual a 2...")
            
            if 1 != 2 {
                print("...1 é diferente de 2...")
                
                if 1 >= 1 && 2 <= 2 {
                    print("...1 é maior ou igual a 1 e 2 é menor ou igual a 2...")
                }
            }
        }
    }
}

