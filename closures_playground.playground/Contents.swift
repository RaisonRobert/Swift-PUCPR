import UIKit

var numeros = [6,4,9,2,10,4,7,8]
numeros.sort()

print(numeros)

numeros.sort{(a,b)-> Bool in
    return a < b
}
numeros.sort{
    return $0 < $1
}

numeros.sort{ $0>$1}

numeros.sort(by: >)
numeros.sorted(by: <)
print(numeros)

var dobrar : (Int) -> (Int) = { x in return 2 * x
}

// Fazer uma função para somar numeros de x e y
//somar de X a Y usando uma função
func somar (de: Int, até: Int, usando: (Int) -> (Int)) -> (Int){
    var soma = 0
    for i in de...até{
        soma += usando(i)
    }
    return soma
}

print("Soma dos dobros: \(somar(de: 1, até: 10, usando: dobrar))")

var resultado = somar(de: 5, até: 12) { x in
    x * x * x
}
resultado = somar(de: 5, até: 12) { $0 * $0 * $0
}
print(resultado)

// map, filter, reduce

var cubos = numeros.map{$0 * $0 * $0
}
print(cubos)

var impares = numeros.filter{$0 % 2 != 0}
print(impares)

var soma = numeros.reduce(0) {
    (i, acumulador) in
    // acumulador = acumulador + i
    return i + acumulador
}
print(soma)
var mult = numeros.reduce(1) { $0 * $1}
print(mult)
