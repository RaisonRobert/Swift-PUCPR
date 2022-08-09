var numeros = [ 6, 4, 9, 2, 10, 4, 7, 8]
numeros.sort()

numeros.sort{(a,b) -> Bool in
    return a > b
}

numeros.sort{
    return $0 > $1
}
numeros.sort{$0 < $1}
print(numeros)
