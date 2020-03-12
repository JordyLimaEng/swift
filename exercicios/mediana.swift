
func Mediana(valores: [Int]) -> Int{
    var mediana = 0
    
    let tam_array = valores.count
    
    if(tam_array > 1){
        let val_ordenados = valores.sorted{$0>$1}
        
        if(tam_array % 2 != 0){
            mediana = val_ordenados[tam_array/2]
        }else{
            mediana = (val_ordenados[tam_array/2]+val_ordenados[(tam_array/2)-1])/2
        }
    }else{
        mediana = valores[tam_array-1]
    }
    return mediana
}

let res = Mediana
var vetor_par = [13,15,13,15,15,17,16,16] //mediana é 15
var vetor_impar = [9,8,7,7,3] //mediana é 7
print(res(vetor_par))
print(res(vetor_impar))