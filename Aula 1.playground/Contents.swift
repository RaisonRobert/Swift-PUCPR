var str: String = "Primeiro exemplo"
print(str)

let PASSO = 10
var numero = 10*30
print(numero)

var valor = 9.99
numero = Int(valor)

var ligada = true

//Tuple
let chaveDuplicada = (703, "Duplicated Key")
let(codigo, mensagem) = chaveDuplicada
print("Código de erro: \(chaveDuplicada.0)")
print(chaveDuplicada.1)

let chaveDup1 = (codigo: 703, mensagem: "Duplicated Key")
print(chaveDuplicada.1)

//array
var galaxias = ["Via Lactea", "Sombrero", "Andromeda"]
print(galaxias[2])

galaxias.append("Cabeça de cavalo")
print(galaxias)

galaxias += [ "Pequena nuvem", "Grande Nuvem"]
print(galaxias)

for galaxia in galaxias {
    print(galaxia)
}

for i in 1...10{
    print(i)
}
for i in stride(from: 2, through: 10, by: 2){
    print(i)
}
var valores: [Int]=[]
var multiplicadores = Array(repeating: 1, count: 30)

var historia = "Olhou no espelho, o reflexo piscou"

for letra in historia{
    print(letra)
}
var generos: Set = [ "Rock","Classico", "Pop"]
generos.insert("Rock")
print(generos)

if generos.contains("Jazz"){
    print("Sim!")
}
print(generos.sorted())
//intersection
// union
//subtracting
// symmetricDifference

//Dicionario
var notaDeFilme = ["La La land": 10.0, " Esquadrão Suicida": 7.0]

for (filme,nota) in notaDeFilme{
    print(" \(filme), nota: \(nota) ")
}
print(notaDeFilme.count)
print(notaDeFilme.isEmpty)
print(notaDeFilme["Dunkirk"])

let notaAnterior=notaDeFilme.updateValue(6.5, forKey: "Esquadrão Suicida")
print(notaAnterior)
print(notaDeFilme["Esquadrão Suicida"])

let filmes = notaDeFilme.keys
let notas = notaDeFilme.values

print(filmes)

for(_, nota) in notaDeFilme{
    print("Nota: \(nota)")
}

func somar (n1: Int, n2: Int) -> Int {
    return n1 + n2
}
print(somar(n1: 10, n2: 20))
func somarN1 (_ n1: Int,com n2: Int) -> Int {
    return n1 + n2
}
let result = somarN1(20,com: 30)

func trocar(_ a: inout Int,_ b: inout Int){
    let aux = a
    a = aux
    b = a
}


var x = 1
var y = 2

trocar(&x,&y)

func divResto(_ x: Int, _ y: Int) -> (Int, Int){
    return( x/y, x%y)
}
divResto(7,2)
print(divResto(52, 20))

let(div, resto) = divResto(5, 6)
print(div)
print(resto)





func contaPalavras(_ frase: String)-> [(String, Int)]{
    var palavrasContadas: [String: Int ] = [:]
    let palavras = frase.split(separator: " ")
    for palavra in palavras{
        let aux = palavra.lowercased()
        if palavrasContadas[aux] == nil {
            palavrasContadas[aux] = 1
        }else {
            palavrasContadas[aux] = palavrasContadas[aux]!+1
        }
    }
    var result: [(String,Int)] = []
    for(palavra,qtde) in palavrasContadas{
        result.append((palavra,qtde))
    }
    return result
}
// Usando recursos da linguagem
func contaPalavrass(_ frase: String)-> [(String, Int)]{
    var palavrasContadas: [String: Int ] = [:]
    let palavras = frase.split(separator: " ")
    for palavra in palavras{
        palavrasContadas[palavra.lowercased()] = palavrasContadas[palavra.lowercased(),default: 0] + 1
    }
    //High order function: map, filter, reduz
    let result: [(String,Int)] = palavrasContadas.map{($0.0, $0.1)}
    return result
}
