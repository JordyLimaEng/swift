//dividido em public, open, internal, fileprivate ou private

class FiguraGeometrica {
    init() {
        print("O construtor da classe FiguraGeometrica foi chamado")
    }
}

let quadrado = FiguraGeometrica()

// Será impresso: "O construtor da classe FiguraGeometrica foi chamado"


let bicicleta = Bicicleta(dono: "João") // Instanciamos a bicicleta de João.

print("A bicicleta de \(bicicleta.dono) tem \(bicicleta.rodas) rodas")

// Será impresso: "A bicicleta de João tem 2 rodas"

// Suponha que João venda sua bicicleta para Matheus, podemos representar
// isso em nosso programa alterando o dono de bicicleta. Perceba que não
// atribuímos uma nova bicicleta à constante, algo que ocasionaria um erro, 
// apenas alteramos o estado do objeto bicicleta, alterando sua propriedade
// nome.

bicicleta.dono = "Matheus"

print("A bicicleta de \(bicicleta.dono) tem \(bicicleta.rodas) rodas")

// Será impresso: "A bicicleta de Matheus tem 2 rodas"



class Bicicleta {
    var rodas: Int
    var dono: String
    var qtdeCiclistas: Int
    
    init(dono: String, rodas: Int) {
        self.dono = dono
        self.rodas = rodas
        
        // no inicio não temos ciclista sobre a
        // bicicleta ainda
        self.qtdeCiclistas = 0
    }

    // retorna true caso seja possível dar carona
    // na bicicleta e false em caso contrário
    func darCarona(para: String) -> Bool {
        if qtdeCiclistas < quantidadeMaxima() {
            if para == dono {
                print("\(dono) subiu em sua própria bicicleta")
            } else {
                print("\(para) subiu na bicicleta de \(dono)")
            }
            qtdeCiclistas += 1
            
            return true
        } else {
            print("A bicicleta de \(dono) já está lotada! \(qtdeCiclistas) ciclista(s)!")
            
            return false
        }
    }
    
    // método que só faz sentido ser utilizado internamente
    // na classe por isso é private
    private func quantidadeMaxima() -> Int {
        if rodas > 1 {
            // 2 rodas => 1 ciclista
            // 3 rodas => 2 ciclistas
            // 4 rodas => 3 ciclistas
            // e assim por diante...
            return rodas - 1
        } else {
            // monociclo: 1 roda => 1 ciclista
            return 1
        }
    }
}


// Vamos instanciar uma bicicleta para Matheus
let b = Bicicleta(dono: "Matheus", rodas: 2)

// Matheus sobe em sua propria bicicleta
b.darCarona(para: "Matheus") 
// Será impresso: "Matheus subiu em sua própria bicicleta"

// Matheus tenta dar carona para João
b.darCarona(para: "João")
// Será impresso: "A bicicleta de Matheus já está lotada! 1 ciclista(s)!"

// Matheus reforma sua bicicleta e adiciona uma roda
// agora poderá transportar até 2 pessoas
b.rodas = 3

// Matheus dá carona para João agora com sucesso!
b.darCarona(para: "João")
// Será impresso: "João subiu na bicicleta de Matheus"

// Matheus tenta dar carona para Maria
b.darCarona(para: "Maria")
// Será impresso: "A bicicleta de Matheus já está lotada! 2 ciclista(s)!"


class FormaGeometrica {
    func descricao() {
        print("Decrição de uma forma geométrica")
    }
}

class Quadrado: FormaGeometrica {
    var tamanho: Int
    
    init(tamanho: Int) {
        self.tamanho = tamanho
    }
    
    func area() -> Int {
        return tamanho * tamanho
    }
    
    override func descricao() {//quando se quer sobrescrever o método de uma classe pai usa-se "override"
        super.descricao()	   //para invocar um método do pai usa-se "super"
        print("- Quadrado de area \(area())")
    }
}

let quadrado = Quadrado(tamanho: 2)
quadrado.descricao()

// Serão impressas as linhas:
//
// Descrição de uma forma geométrica
// - Quadrado de area 4


func realizaOperacoes(operacoes: [OperacaoMatematica], a: Double, b: Double) -> [Double] {
    var resultado = [Double]()
    
    for operacao in operacoes {
        resultado.append(operacao.calcular(x: a, y: b))
    }
    
    return resultado
}

let soma = Soma()
let subtracao = Subtracao()

var operacoes = [OperacaoMatematica]()
operacoes.append(soma)
operacoes.append(subtracao)

print(realizaOperacoes(operações: operacoes, a: 4.0, b: 2.0))
// Será impresso: "[6.0, 2.0]"


extension String { //extensão sobre a propria classe fornecida pela apple
    func onlyVogals() -> String {
        var vogals = ""
        
        for c in self.characters {
            let letter = "\(c)"
            if (letter == "a" || letter == "e" || letter == "i" || 
                letter == "o" || letter == "u") {
                vogals += letter
            }
        }
        
        return vogals
    }
}

let hello = "Hello, World!"
print(hello.onlyVogals())
// Será impresso: "eoo"




















