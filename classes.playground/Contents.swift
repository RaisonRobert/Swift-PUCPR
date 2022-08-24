// Structs e classes

class Catioro{
    var nome: String
    var idade: Int
    
    init (_ nome: String,_ idade: Int){
        self.nome = nome
        self.idade = idade
    }
    
    func latir(){
        print(" au auau uau")
    }
}

let seuCatioro = Catioro("Frederico", 1)
let outroCatioro = Catioro("Zeus", 2)
let maisUmCatioro = Catioro("Hulk", 4)
seuCatioro.latir()

let x = outroCatioro

print(x)
print(outroCatioro)


func == (_ dogg1: Catioro,_ doggo2:Catioro)-> Bool{
    return dogg1.nome == doggo2.nome
}

print(x == outroCatioro)



