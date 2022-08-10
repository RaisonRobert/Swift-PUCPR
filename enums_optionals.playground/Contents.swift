// Enum

import Darwin
enum AppleDevice{
    case iPhone
    case iPad
    case AppleWatch
    case AppleTV
}
print(AppleDevice.iPhone)

var dispositivo = AppleDevice.AppleTV
var dispositivo2: AppleDevice = . iPad

enum AppleDevice2{
    case iPhone(String)
    case iPad(String)
    case AppleWatch(String)
    case AppleTV
}

var dispositivo3: AppleDevice2 = .iPhone("12")

switch(dispositivo2){
case .iPhone: fallthrough
case .iPad: print("IOS")
case .AppleTV: print("TVIOS")
case.AppleWatch: print("WatchOS")
    
//default:print(" Dispositivo Inválido")
}


let MOEDA_REAL = 0
let MOEDA_DOLAR = 1
let MOEDA_EURO = 2

enum Moeda{
    case Real
    case Dolar
    case Euro
}

let tipo_pagamento = Moeda.Dolar
let tipos_pagamento = [ "Triology": Moeda.Dolar,
                        "Nacional": Moeda.Real]

func iguais(_ a: AppleDevice2, _ b: AppleDevice2) -> Bool{
    switch (a,b) {
    case(.iPhone(let ma), .iPhone(let mb)) where ma == mb:
        return true
    case(.iPad(let ma), .iPad(let mb)) where ma == mb:
        return true
    case(.AppleWatch(let ma), .AppleWatch(let mb)) where ma == mb:
        return true
    case(.AppleTV, .AppleTV): return true
    default: return false
    }
}


print(iguais(AppleDevice2.iPhone("12"), AppleDevice2.iPhone("X")))


//Optional
let maybeNumber = "42"
let number = Int(maybeNumber)

print(number)

//Umwrap
print(number!)

let maybe: Int? = 20
print(maybe)

if maybe != nil {
    print(maybe)
    print(maybe!)
}
let not_so_maybe: Int! = nil
print(not_so_maybe ?? 0)
if not_so_maybe != nil {
    print(not_so_maybe ?? 0)
    print(not_so_maybe!)
}
